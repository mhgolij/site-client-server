<?php
namespace App\Http\Middleware;

use Closure;

class Cors
{
    public function handle($request,Closure $next){
        $header = [
            'Access-Control-Allow-Origin'=>'*',
            'Access-Control-Allow-Method'=>'*',
            'Access-Control-Allow-Credentials'=>'false',
            'Access-Control-Allow-Max-Age'=>'86000',
            'Access-Control-Allow-Headers'=>'*',
        ];
        $response = $next($request);
        foreach($header as $key => $value){
            $response->header($key,$value);
        }
        return $response;
    }
}
