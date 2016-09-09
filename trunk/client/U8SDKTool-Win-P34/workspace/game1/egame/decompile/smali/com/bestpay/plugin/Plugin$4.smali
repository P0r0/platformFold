.class Lcom/bestpay/plugin/Plugin$4;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->pay(Landroid/content/Context;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$params:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/bestpay/plugin/Plugin$4;->val$context:Landroid/content/Context;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 296
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v16, "MERCHANTID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "MERCHANTID"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "SUBMERCHANTID"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2b1

    .line 300
    const-string v15, "SUBMERCHANTID"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_35
    const-string v16, "BUSITYPE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "BUSITYPE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v16, "MAC"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "MAC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v16, "MERCHANTPWD"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "MERCHANTPWD"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v16, "ORDERSEQ"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ORDERSEQ"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v16, "ORDERREQTRANSEQ"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ORDERREQTRANSEQ"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v16, "ORDERTIME"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ORDERTIME"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v16, "ORDERVALIDITYTIME"

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ORDERVALIDITYTIME"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 310
    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v16, "PRODUCTDESC"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "PRODUCTDESC"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v15, "SDKVERSIONCODE"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v16, "SESSIONKEY"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "SESSIONKEY"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "OTHERFLOW"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2c8

    .line 318
    const-string v15, "OTHERFLOW"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "CUSTOMERID"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2df

    .line 324
    const-string v15, "CUSTOMERID"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "PRODUCTAMOUNT"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2f6

    .line 329
    const-string v15, "PRODUCTAMOUNT"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_14c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "ATTACHAMOUNT"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_30d

    .line 334
    const-string v15, "ATTACHAMOUNT"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_167
    const-string v16, "CURTYPE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "CURTYPE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v16, "BACKMERCHANTURL"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "BACKMERCHANTURL"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "ATTACH"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_324

    .line 341
    const-string v15, "ATTACH"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "PRODUCTID"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_33b

    .line 346
    const-string v15, "PRODUCTID"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_1c7
    const-string v16, "USERIP"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "USERIP"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "DIVDETAILS"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_352

    .line 352
    const-string v15, "DIVDETAILS"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_1f7
    const-string v16, "ACCOUNTID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ACCOUNTID"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v16, "KEY"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "KEY"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "USERACCOUNT"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_369

    .line 360
    const-string v15, "USERACCOUNT"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_23c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "MERCHANTPHONE"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_380

    .line 366
    const-string v15, "MERCHANTPHONE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_257
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "ORDERAMOUNT"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 375
    .local v12, "orderAmount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v16, "PAYTYPE"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 376
    .local v14, "payType":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 377
    .local v2, "amount":D
    const/4 v4, 0x1

    .line 379
    .local v4, "amountFlag":Z
    :try_start_277
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_27a} :catch_397

    move-result-wide v2

    .line 383
    :goto_27b
    if-eqz v4, :cond_29f

    .line 384
    const-wide/16 v16, 0x0

    cmpl-double v15, v2, v16

    if-lez v15, :cond_39b

    const-string v15, "."

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_39b

    .line 385
    const-string v15, "."

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 386
    .local v9, "index":I
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 387
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 389
    .local v11, "len":I
    const/4 v15, 0x2

    if-le v11, v15, :cond_29f

    .line 390
    const/4 v4, 0x0

    .line 403
    .end local v9    # "index":I
    .end local v11    # "len":I
    :cond_29f
    :goto_29f
    if-nez v4, :cond_3be

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$context:Landroid/content/Context;

    const-string v16, "\u91d1\u989d\u8f93\u5165\u4e0d\u6b63\u786e,\u5355\u4f4d\u662f\u5143,\u5c0f\u6570\u70b9\u540e\u4e24\u4f4d"

    .line 405
    const/16 v17, 0x0

    .line 404
    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 405
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 442
    :goto_2b0
    return-void

    .line 302
    .end local v2    # "amount":D
    .end local v4    # "amountFlag":Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "orderAmount":Ljava/lang/String;
    .end local v14    # "payType":Ljava/lang/String;
    :cond_2b1
    const-string v16, "SUBMERCHANTID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "SUBMERCHANTID"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 320
    :cond_2c8
    const-string v16, "OTHERFLOW"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "OTHERFLOW"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_116

    .line 326
    :cond_2df
    const-string v16, "CUSTOMERID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "CUSTOMERID"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 331
    :cond_2f6
    const-string v16, "PRODUCTAMOUNT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "PRODUCTAMOUNT"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14c

    .line 336
    :cond_30d
    const-string v16, "ATTACHAMOUNT"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ATTACHAMOUNT"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_167

    .line 343
    :cond_324
    const-string v16, "ATTACH"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "ATTACH"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ac

    .line 348
    :cond_33b
    const-string v16, "PRODUCTID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "PRODUCTID"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c7

    .line 354
    :cond_352
    const-string v16, "DIVDETAILS"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "DIVDETAILS"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f7

    .line 362
    :cond_369
    const-string v16, "USERACCOUNT"

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "USERACCOUNT"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 362
    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23c

    .line 368
    :cond_380
    const-string v16, "MERCHANTPHONE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$params:Ljava/util/Hashtable;

    const-string v17, "MERCHANTPHONE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_257

    .line 380
    .restart local v2    # "amount":D
    .restart local v4    # "amountFlag":Z
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "orderAmount":Ljava/lang/String;
    .restart local v14    # "payType":Ljava/lang/String;
    :catch_397
    move-exception v8

    .line 381
    .local v8, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto/16 :goto_27b

    .line 393
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_39b
    const-string v15, "."

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3bb

    .line 394
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 395
    .local v5, "bd":Ljava/math/BigDecimal;
    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    .line 396
    invoke-virtual {v5}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 397
    .local v13, "orderstr":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 398
    goto/16 :goto_29f

    .line 399
    .end local v5    # "bd":Ljava/math/BigDecimal;
    .end local v13    # "orderstr":Ljava/lang/String;
    :cond_3bb
    const/4 v4, 0x0

    goto/16 :goto_29f

    .line 408
    :cond_3be
    new-instance v7, Ljava/text/DecimalFormat;

    .line 409
    const-string v15, "0.00"

    .line 408
    invoke-direct {v7, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 410
    .local v7, "decimalFormat":Ljava/text/DecimalFormat;
    const-string v15, "1"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_405

    .line 411
    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    cmpl-double v15, v2, v16

    if-lez v15, :cond_3ea

    .line 413
    const-string v15, "ORDAMOUNT_LIMIT"

    .line 412
    # invokes: Lcom/bestpay/plugin/Plugin;->markErrFeildForIntent(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v10, v15}, Lcom/bestpay/plugin/Plugin;->access$0(Landroid/content/Intent;Ljava/lang/String;)V

    .line 437
    :goto_3d8
    :try_start_3d8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bestpay/plugin/Plugin$4;->val$context:Landroid/content/Context;

    check-cast v15, Landroid/app/Activity;

    .line 438
    const/16 v16, 0x3e8

    .line 437
    move/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3e5} :catch_3e7

    goto/16 :goto_2b0

    .line 439
    :catch_3e7
    move-exception v15

    goto/16 :goto_2b0

    .line 415
    :cond_3ea
    const-string v15, "ORDERAMOUNT"

    .line 416
    invoke-virtual {v7, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    .line 415
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v10, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 418
    new-instance v15, Landroid/content/ComponentName;

    .line 419
    const-string v16, "com.chinatelecom.bestpayplugin"

    .line 420
    const-string v17, "com.chinatelecom.bestpayplugin.BillPayActivity"

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v10, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3d8

    .line 426
    :cond_405
    const-string v15, "ORDERAMOUNT"

    .line 427
    invoke-virtual {v7, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v16

    .line 426
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v10, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    new-instance v15, Landroid/content/ComponentName;

    .line 430
    const-string v16, "com.chinatelecom.bestpayplugin"

    .line 431
    const-string v17, "com.chinatelecom.bestpayplugin.PaymentActivity"

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v10, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3d8
.end method
