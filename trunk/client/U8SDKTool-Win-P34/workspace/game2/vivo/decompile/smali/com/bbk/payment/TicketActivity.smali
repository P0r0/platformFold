.class public Lcom/bbk/payment/TicketActivity;
.super Lcom/bbk/payment/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mBackResult:I


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/HashMap;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/content/Intent;

.field private e:Lcom/bbk/payment/model/OrderInfo;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    sput v0, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbk/payment/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/TicketActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/TicketActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->j:Landroid/widget/Button;

    return-object v0
.end method

.method private a(ILcom/bbk/payment/model/OrderInfo;)V
    .registers 5

    const-string v0, "couponlist_cancel"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/bbk/payment/TicketActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/TicketActivity;ILcom/bbk/payment/model/OrderInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbk/payment/TicketActivity;->a(ILcom/bbk/payment/model/OrderInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/TicketActivity;Ljava/lang/String;)V
    .registers 19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "able"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "unable"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bbk/payment/TicketActivity;->k:I

    const-string v2, "TicketActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "threadListFromJsonArray ----------------------mAbleJsonArray="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v5, v3

    :goto_4a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_f4

    if-lez v5, :cond_5b

    const-string v2, "couponlist_show"

    const-string v3, "1"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    const/4 v3, 0x0

    const-string v2, "TicketActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "threadListFromJsonArray ----------------------mUnableJsonArray="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_73
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_1e0

    if-gtz v4, :cond_7f

    if-nez v4, :cond_88

    if-nez v5, :cond_88

    :cond_7f
    const-string v2, "couponlist_show"

    const-string v3, "2"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v3, "ticketCode"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    const-string v2, "TicketActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataSource ****************mDataSource="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d1

    const-string v2, "TicketActivity"

    const-string v3, "there is no data in json"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_d1} :catch_2b4

    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->c:Landroid/widget/ListView;

    new-instance v3, Lcom/bbk/payment/TicketActivity$InfoAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/bbk/payment/TicketActivity$InfoAdapter;-><init>(Lcom/bbk/payment/TicketActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->c:Landroid/widget/ListView;

    new-instance v3, Lcom/bbk/payment/ax;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bbk/payment/ax;-><init>(Lcom/bbk/payment/TicketActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_f4
    :try_start_f4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "amount"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "ticketCode"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v11, "items"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v3, "TicketActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mAbleItem ----------------------length="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_143
    const/4 v12, 0x3

    if-lt v3, v12, :cond_17a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v11, "isAble"

    const-string v12, "1"

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v11, "ticketCode"

    invoke-virtual {v3, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v10, "ticket_title"

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v9, "ticket_amount"

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto/16 :goto_4a

    :cond_17a
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ticket_context"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ticket_state"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TicketActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mAbleItem ----------------------ticket_context="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",mTicketState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "enabled"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "desc"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_143

    :cond_1e0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "amount"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "name"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v10, "ticketCode"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v11, "items"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v2, 0x0

    :goto_217
    const/4 v12, 0x3

    if-lt v2, v12, :cond_24e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v11, "ticketCode"

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v10, "ticket_title"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v9, "ticket_amount"

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    const-string v8, "isAble"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_73

    :cond_24e
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ticket_context"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ticket_state"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TicketActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mUnableItem ----------------------ticket_context="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",mTicketState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "enabled"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "desc"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bbk/payment/TicketActivity;->b:Ljava/util/HashMap;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b0
    .catch Lorg/json/JSONException; {:try_start_f4 .. :try_end_2b0} :catch_2b4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_217

    :catch_2b4
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d1
.end method

.method static synthetic b(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/TicketActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/TicketActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/TicketActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/bbk/payment/TicketActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbk/payment/TicketActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/bbk/payment/TicketActivity;)Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->m:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic i(Lcom/bbk/payment/TicketActivity;)Lcom/bbk/payment/model/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    return-object v0
.end method

.method static synthetic j(Lcom/bbk/payment/TicketActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/TicketActivity;->k:I

    return v0
.end method


# virtual methods
.method public initTicketPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0xa

    :try_start_3
    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2.0.6"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signMethod"

    const-string v5, "MD5"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPackageN()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderNumber"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTransNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "orderAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const-string v2, "TicketActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "price="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getPrice()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ticketCode"

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ticketAmount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bbk/payment/model/OrderInfo;->getTicketAmount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v2, :cond_c8

    :goto_c5
    array-length v2, v1

    if-lt v0, v2, :cond_d3

    :cond_c8
    new-instance v0, Lcom/bbk/payment/aw;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/bbk/payment/aw;-><init>(Lcom/bbk/payment/TicketActivity;B)V

    invoke-virtual {v0, v1}, Lcom/bbk/payment/aw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    return-object v0

    :cond_d3
    const-string v2, "TicketActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------------nameValuePairs"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f3} :catch_f6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :catch_f6
    move-exception v0

    const-string v1, "TicketActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send initial payment failed,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bbk/payment/model/OrderInfo;->setTicketAmount(J)V

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbk/payment/model/OrderInfo;->setTicketCode(Ljava/lang/String;)V

    const-string v0, "couponlist_nochoose"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/bbk/payment/TicketActivity;->mBackResult:I

    iget-object v1, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    invoke-direct {p0, v0, v1}, Lcom/bbk/payment/TicketActivity;->a(ILcom/bbk/payment/model/OrderInfo;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->finish()V

    goto :goto_20

    :cond_29
    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->g:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_20

    :try_start_2d
    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->initTicketPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_20

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbk/payment/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_activity_ticket"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/TicketActivity;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->m:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "ticket_list"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "btn_back"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "loading_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "retry_layout"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "error_text"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "giftcertificate_button_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/TicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->d:Landroid/content/Intent;

    const-string v1, "orderInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/model/OrderInfo;

    iput-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    sget-boolean v0, Lcom/bbk/payment/model/OrderInfo;->logOnOff:Z

    if-eqz v0, :cond_c4

    const-string v0, "TicketActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate ----------------------orderInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    :try_start_c4
    iget-object v0, p0, Lcom/bbk/payment/TicketActivity;->e:Lcom/bbk/payment/model/OrderInfo;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/TicketActivity;->initTicketPairs(Lcom/bbk/payment/model/OrderInfo;)Lorg/json/JSONObject;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c9} :catch_ca

    :goto_c9
    return-void

    :catch_ca
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c9
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbk/payment/BaseActivity;->onResume()V

    return-void
.end method
