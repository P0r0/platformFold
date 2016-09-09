.class public Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

.field private d:Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

.field private e:I

.field private f:Ljava/util/List;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field protected rogressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    invoke-virtual {v0, v2}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setPullLoadEnable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;I)V
    .registers 2

    iput p1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->stopRefresh()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    invoke-virtual {v0}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->stopLoadMore()V

    return-void
.end method

.method static synthetic c(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e:I

    return v0
.end method

.method static synthetic f(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VivoDealRecordActivity"

    const-string v1, "**********onCreate*************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_deal_record_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_deal_nodata_textview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/bbk/payment/dealRecord/a;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/a;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbk/payment/dealRecord/b;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/b;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_deal_nodata_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "vivo_foot_listview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->d:Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setPullRefreshEnable(Z)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    new-instance v1, Lcom/bbk/payment/dealRecord/c;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/c;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setPullRefreshListener(Lcom/bbk/payment/dealRecord/VivoFootRefreshListView$VivoPullRefreshListener;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->c:Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;

    new-instance v1, Lcom/bbk/payment/dealRecord/d;

    invoke-direct {v1, p0}, Lcom/bbk/payment/dealRecord/d;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbk/payment/dealRecord/VivoFootRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->sendDealRequest()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public sendDealRequest()V
    .registers 8

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u7f51\u7edc\u8d85\u65f6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    return-void

    :cond_11
    const/16 v0, 0xb

    :try_start_13
    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/bbk/payment/model/DeviceInfo;

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bbk/payment/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    const-string v6, "2.0.6"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "version"

    const-string v4, "2.0.6"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "appId"

    iget-object v4, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "packageName"

    iget-object v6, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "model"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "imei"

    invoke-virtual {v2}, Lcom/bbk/payment/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uid"

    iget-object v5, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "uid"

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    iget-object v5, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "username"

    iget-object v3, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "pageNum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "pageNum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLoginSk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbk/payment/util/UtilTool;->generateSignture(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "yid"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v3, "yid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "xid"

    const-string v5, "https://pay.vivo.com.cn/vcoin/transaction/query"

    invoke-static {v5, v1}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/16 v1, 0xa

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "signMethod"

    const-string v4, "MD5"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/bbk/payment/dealRecord/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bbk/payment/dealRecord/e;-><init>(Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;B)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/dealRecord/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13c} :catch_13e

    goto/16 :goto_10

    :catch_13e
    move-exception v0

    const-string v1, "VivoDealRecordActivity"

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

    goto/16 :goto_10
.end method
