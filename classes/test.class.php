<?php
function repeatedElements($array, $returnWithNonRepeatedItems = false)
{
    $repeated = array();
 
    foreach( (array)$array as $value )
    {
        $inArray = false;
 
        foreach( $repeated as $i => $rItem )
        {
            if( $rItem['value'] === $value )
            {
                $inArray = true;
                ++$repeated[$i]['count'];
            }
        }
 
        if( false === $inArray )
        {
            $i = count($repeated);
            $repeated[$i] = array();
            $repeated[$i]['value'] = $value;
            $repeated[$i]['count'] = 1;
        }
    }
 
    if( ! $returnWithNonRepeatedItems )
    {
        foreach( $repeated as $i => $rItem )
        {
            if($rItem['count'] === 1)
            {
                unset($repeated[$i]);
            }
        }
    }
 
    sort($repeated);
 
    return $repeated;
}
?>