if (place_meeting(x, (y - 1), obj_player) && obj_player.x >= (x - 10) && obj_player.x <= (x + 10) && (global.shroomfollow == 1 || global.cheesefollow == 1 || global.tomatofollow == 1 || global.sausagefollow == 1 || global.pineapplefollow == 1))
    obj_player.state = states.pizzathrow
