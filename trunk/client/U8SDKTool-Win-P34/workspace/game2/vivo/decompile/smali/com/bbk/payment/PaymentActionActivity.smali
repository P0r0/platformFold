.class public Lcom/bbk/payment/PaymentActionActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/bbk/payment/action/ActionAdapter;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/bbk/payment/H;

    invoke-direct {v0, p0}, Lcom/bbk/payment/H;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/PaymentActionActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bbk/payment/PaymentActionActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bbk/payment/PaymentActionActivity;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/PaymentActionActivity;)Lcom/bbk/payment/action/ActionAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->h:Lcom/bbk/payment/action/ActionAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/bbk/payment/PaymentActionActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->i:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public Dp2Px(Landroid/content/Context;F)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public closeActionDetailsDialog()V
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    :cond_14
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PaymentActionActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_popwin"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/PaymentActionActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    :cond_3b
    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getSdkVerCode()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/PaymentActionActivity;->l:I

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PaymentActionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_fd

    const-string v1, "actionRecord"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_83

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    :cond_83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAppId(Ljava/lang/String;)V

    :cond_8e
    const-string v4, "gamePackageName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->k:Ljava/lang/String;

    iget v4, p0, Lcom/bbk/payment/PaymentActionActivity;->l:I

    if-nez v4, :cond_a9

    const-string v4, "sdkVersionCode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/bbk/payment/PaymentActionActivity;->l:I

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget v5, p0, Lcom/bbk/payment/PaymentActionActivity;->l:I

    invoke-virtual {v4, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setSdkVerCode(I)V

    :cond_a9
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ba

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    :cond_ba
    if-eqz v1, :cond_fd

    :try_start_bc
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "vcoineventpoint"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    const-string v1, "payChannels"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bbk/payment/model/OrderInfo;->payChannel:Ljava/lang/String;

    const-string v1, "custService"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bbk/payment/model/OrderInfo;->custService:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_e5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_e8
    .catch Lorg/json/JSONException; {:try_start_bc .. :try_end_e8} :catch_173

    move-result v4

    if-lt v0, v4, :cond_fe

    :goto_eb
    if-eqz v3, :cond_f2

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    :cond_f2
    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_179

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->showSingleActionDlg()V

    :cond_fd
    :goto_fd
    return-void

    :cond_fe
    :try_start_fe
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "activityId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    invoke-static {v8}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bbk/payment/util/UtilTool;->getShprefsaAtionRecord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "PaymentActionActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isChecked="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_16f

    new-instance v6, Lcom/bbk/payment/action/Action;

    invoke-direct {v6}, Lcom/bbk/payment/action/Action;-><init>()V

    invoke-virtual {v6, v5}, Lcom/bbk/payment/action/Action;->setActionId(Ljava/lang/String;)V

    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bbk/payment/action/Action;->setTitle(Ljava/lang/String;)V

    const-string v5, "date"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bbk/payment/action/Action;->setDate(Ljava/lang/String;)V

    const-string v5, "object"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bbk/payment/action/Action;->setObject(Ljava/lang/String;)V

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/bbk/payment/action/Action;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/bbk/payment/action/Action;->setAppId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_16f} :catch_173

    :cond_16f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e5

    :catch_173
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_eb

    :cond_179
    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_186

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->showMultiActionDlg()V

    goto/16 :goto_fd

    :cond_186
    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    goto/16 :goto_fd
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "PaymentActionActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->finish()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "PaymentActionActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "PaymentActionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "PaymentActionActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showMultiActionDlg()V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    iput-object v2, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    :cond_14
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "vivo_multiaction_dlg"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v2}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "multiaction_cancel"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "action_list"

    invoke-static {v1, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/bbk/payment/action/ActionAdapter;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4}, Lcom/bbk/payment/action/ActionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->h:Lcom/bbk/payment/action/ActionAdapter;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionActivity;->h:Lcom/bbk/payment/action/ActionAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->i:Landroid/widget/ListView;

    new-instance v3, Lcom/bbk/payment/M;

    invoke-direct {v3, p0}, Lcom/bbk/payment/M;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const-string v1, "popups_show"

    const-string v3, "1"

    invoke-static {p0, v1, v3}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbk/payment/N;

    invoke-direct {v1, p0}, Lcom/bbk/payment/N;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    const-string v4, "dialog"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/bbk/payment/O;

    invoke-direct {v1, p0}, Lcom/bbk/payment/O;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    const-string v4, "bbk_multiaction_dlg_width"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showSingleActionDlg()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    iput-object v2, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    :cond_14
    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "bbk_action_details_dialog"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, v2}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "action_title_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "action_context_date_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "action_context_object_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "action_context_desc_id"

    invoke-static {v0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/action/Action;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getActionId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getObject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bbk/payment/action/Action;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "action_read_and_accept_id"

    invoke-static {v1, v2}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "action_cancel_id"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbk/payment/PaymentActionActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v6, "action_details_ok_id"

    invoke-static {v3, v6}, Lcom/bbk/payment/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v6, "PaymentActionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mNoTipCheckbox"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "popups_show"

    const-string v7, "1"

    invoke-static {p0, v6, v7}, Lcom/bbk/payment/provider/PaymentUsageUtils;->saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_105

    iget-object v6, p0, Lcom/bbk/payment/PaymentActionActivity;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_105

    iget-object v6, p0, Lcom/bbk/payment/PaymentActionActivity;->j:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v7, p0, Lcom/bbk/payment/PaymentActionActivity;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    :cond_105
    new-instance v6, Lcom/bbk/payment/I;

    invoke-direct {v6, p0, v1, v5}, Lcom/bbk/payment/I;-><init>(Lcom/bbk/payment/PaymentActionActivity;Landroid/widget/CheckBox;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/bbk/payment/J;

    invoke-direct {v6, p0, v5, v1, v0}, Lcom/bbk/payment/J;-><init>(Lcom/bbk/payment/PaymentActionActivity;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/bbk/payment/action/Action;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbk/payment/K;

    invoke-direct {v0, p0}, Lcom/bbk/payment/K;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    const-string v3, "dialog"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/ResourceUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/bbk/payment/L;

    invoke-direct {v1, p0}, Lcom/bbk/payment/L;-><init>(Lcom/bbk/payment/PaymentActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/bbk/payment/PaymentActionActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/PaymentActionActivity;->b:Landroid/content/Context;

    const-string v4, "bbk_multiaction_dlg_width"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
