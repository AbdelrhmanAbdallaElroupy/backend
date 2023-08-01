<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        //Filters
        $searchParameter=$request->searchParameter;
        $sortBy=$request->sortBy;
        $sortType=$request->sortType;
        $limit=$request->limit;
        $owner_id=Auth::user()->id;
        $tasks=Task::select('*')
        ->when($searchParameter, function ($query) use ($searchParameter) {
            $query->where("taskName",'like',"%".$searchParameter."%")
            ->orWhere("dueDate",'like',"%".$searchParameter."%")
            ->orWhere("description",'like',"%".$searchParameter."%");
        })->when($sortBy, function ($query) use ($sortBy,$sortType) {
            $query->orderBy($sortBy, $sortType);
        })
        ->where('owner_id',$owner_id)
        ->paginate($limit);

         return response($tasks, 200);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'taskName' => 'required|max:255',
            'description' => 'max:255',
            'dueDate' => 'date',
        ]);

        try {
            $owner_id=Auth::user()->id;
            $task=new Task([
                'taskName'=>$request->taskName,
                'description'=>$request->description,
                'dueDate'=>$request->dueDate,
                'owner_id'=>$owner_id,
            ]);
            $task->save();
        } catch (\Exception $e) {

            logger('Create Task Error:',[$e->getMessage()]);

            return response('Error', 500);
        }

        return response($task, 201);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'taskName' => 'max:255',
            'description' => 'max:255',
            'dueDate' => 'date',
        ]);

        try {
            $task=Task::findOrFail($id);
            $owner_id=Auth::user()->id;
            if($owner_id!=$task->owner_id){
                return response('You Are Not The Owner', 500);
            }
            $input=Arr::only($request->all(),[
                'taskName',
                'description',
                'dueDate',
                'owner_id',
            ]);

           $task->update($input);

        } catch (\Exception $e) {

            logger('Update Task Error:',[$e->getMessage()]);

            return response('Error', 500);
        }

        return response($task, 204);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateStatus(Request $request, $id)
    {


        try {
            $task=Task::findOrFail($id);
            $owner_id=Auth::user()->id;
            if($owner_id!=$task->owner_id){
                return response('You Are Not The Owner', 500);
            }

            $task->isCompleted=!$task->isCompleted;
            $task->save();

        } catch (\Exception $e) {

            logger('Update Task Error:',[$e->getMessage()]);

            return response('Error', 500);
        }

        return response("changed", 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $task=Task::findOrFail($id);
        $owner_id=Auth::user()->id;
        if($owner_id!=$task->owner_id){
            return response('You Are Not The Owner', 500);
        }else{
            $task->delete();
            return response('Deleted', 200);
        }
    }
}
