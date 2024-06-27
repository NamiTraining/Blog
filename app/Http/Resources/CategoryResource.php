<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [

            'id'=> $this-> id,
            'image'=> asset($this-> image),
            'parent'=> $this-> parent,
            'created_at'=> $this-> created_at ->format('Y-M-D'),
//            'updated_at'=> $this-> updated_at,
//            'deleted_at'=> $this-> deleted_at,
            'title'=> $this-> title,
            'content'=> $this-> content,
            'children'=> CategoryCollection::make($this-> whenLoaded('children')),
            'posts'=> PostResource::collection($this-> whenLoaded('posts')),

        ];    }
}
