if (object_index != obj_pizzaball)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && baddieID != other.id)
        {
            if ((baddieID.state == states.stun && baddieID.hsp != 0 && baddieID.thrown == 1) || (baddieID.state == states.grabbed && obj_player.state == states.superslam))
                instance_destroy(other.id)
        }
    }
}
