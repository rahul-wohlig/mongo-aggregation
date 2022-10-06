db.orders.aggregate(
[{$group: {_id: {userId:'$userId',name: '$name',status: '$status', },amount: {$sum: '$amount'}, }}, {$sort: {_id: 1}}])
