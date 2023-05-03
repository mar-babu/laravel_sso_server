<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\Client;

class Passport extends Client
{
    public function skipsAuthorization()
    {
        // false: all the clients should stop for authorization
        return false;
    }

}
