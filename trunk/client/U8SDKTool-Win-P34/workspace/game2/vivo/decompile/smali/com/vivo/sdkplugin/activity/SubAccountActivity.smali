.class public Lcom/vivo/sdkplugin/activity/SubAccountActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"


# instance fields
.field private A:Lcom/vivo/sdkplugin/activity/eC;

.field a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

.field b:Lcom/vivo/sdkplugin/adapter/SubAccountJsonPaser;

.field c:I

.field d:I

.field e:Z

.field f:Lcom/vivo/sdkplugin/TempNoticeDialog;

.field private g:Lcom/vivo/sdkplugin/activity/ez;

.field private h:Landroid/os/HandlerThread;

.field private i:Landroid/os/Handler;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private l:Landroid/widget/ListView;

.field private m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/vivo/sdkplugin/adapter/SubAccount;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/EditText;

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/AdapterView$OnItemClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->v:Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/activity/eo;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/eo;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/er;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/er;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/es;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/es;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->y:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->f:Lcom/vivo/sdkplugin/TempNoticeDialog;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/ez;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/ez;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/eD;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/eD;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/ez;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Lcom/vivo/sdkplugin/adapter/SubAccount;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->s:Lcom/vivo/sdkplugin/adapter/SubAccount;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private b()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u767b\u5f55:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createNormalLoginDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->z:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->turnToGameTime()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    if-nez v1, :cond_21

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.bbk.ACCOUNT_INFO"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/ez;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/activity/ez;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    :cond_21
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    if-nez v1, :cond_2c

    new-instance v1, Lcom/vivo/sdkplugin/activity/eD;

    invoke-direct {v1, p0, v3}, Lcom/vivo/sdkplugin/activity/eD;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    :cond_2c
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_38

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    :goto_37
    return-void

    :cond_38
    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/ez;->sendEmptyMessage(I)Z

    goto :goto_37
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->s:Lcom/vivo/sdkplugin/adapter/SubAccount;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const/4 v2, 0x1

    new-instance v3, Lcom/vivo/sdkplugin/activity/ep;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/activity/ep;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    new-instance v4, Lcom/vivo/sdkplugin/activity/eq;

    invoke-direct {v4, p0}, Lcom/vivo/sdkplugin/activity/eq;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->f:Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->f:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a()V

    return-void
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "subid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->s:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMsubid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_CHANGESUBACCOUNT_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/eE;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/eE;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_4a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GETSUBACCOUNTINFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/eA;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/eA;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_3f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->s:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMsubid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickname"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->v:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3b
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_EDITSUBACCOUNT_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/eB;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/eB;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_51
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b()V

    return-void
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 4

    const-string v0, "SubAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "before size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subaccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " submax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d:I

    iget v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c:I

    if-ge v0, v1, :cond_46

    new-instance v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubAccount;->setFootView(Z)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    const-string v0, "SubAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 4

    const-string v0, "SubAccountActivity"

    const-string v1, "-----refreshSubView() enter ------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSubAccountList size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->j:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->setSubCount(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->setSubMax(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 3

    const-string v0, "SubAccountActivity"

    const-string v1, "------turnToGame------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendGameInfo(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->finish()V

    return-void
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/ez;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/ez;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/eD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/eD;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a(I)V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->g:Lcom/vivo/sdkplugin/activity/ez;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/ez;->sendEmptyMessage(I)Z

    goto :goto_36
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SubAccountActivity"

    const-string v1, "-----------onActivityResult()----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_15

    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b()V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a()V

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceCancelLogin(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SubAccountActivity"

    const-string v1, "---------onCreate------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_subaccount_list_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    new-instance v0, Lcom/vivo/sdkplugin/activity/eD;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/eD;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "sublist_parent_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "sublist_edit_sub"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/et;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/et;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "list"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "retry_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "sublist_account_name"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "sublist_account_exit"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q:Landroid/widget/TextView;

    const-string v1, "\u6e38\u5ba2\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d6
    new-instance v0, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m:Lcom/vivo/sdkplugin/adapter/SubUserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->a()V

    return-void

    :cond_ff
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->k:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d6
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9

    const/16 v2, 0x64

    const/4 v5, 0x5

    const-string v0, "SubAccountActivity"

    const-string v1, "---------onCreateDialog() enter ------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2a

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/eu;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eu;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_74

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_cue"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_commit_user_contact_tip"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_ok_label"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/ev;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/ev;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    goto :goto_29

    :cond_74
    if-ne p1, v2, :cond_83

    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    :cond_7e
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_29

    :cond_83
    if-ne p1, v5, :cond_7e

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout"

    const-string v3, "vivo_check_dialog"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "dialog_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/Dialog;

    const-string v0, "style"

    const-string v3, "customdialog"

    invoke-static {p0, v0, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v3, 0x145

    invoke-static {p0, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "dialog_input"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->u:Landroid/widget/EditText;

    const-string v0, "id"

    const-string v3, "vivo_cancel_btn"

    invoke-static {p0, v0, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "id"

    const-string v4, "vivo_commit_btn"

    invoke-static {p0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/vivo/sdkplugin/activity/ew;

    invoke-direct {v3, p0, v2}, Lcom/vivo/sdkplugin/activity/ew;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->u:Landroid/widget/EditText;

    new-instance v3, Lcom/vivo/sdkplugin/activity/ex;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/activity/ex;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/ey;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/ey;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v0, v2

    goto/16 :goto_29
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/eC;->cancel()V

    :cond_c
    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onRestart()V

    const-string v0, "SubAccountActivity"

    const-string v1, "-------onRestart() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/eC;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    :cond_13
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/eC;->pause()V

    :cond_c
    return-void
.end method

.method public turnToGameTime()V
    .registers 7

    new-instance v0, Lcom/vivo/sdkplugin/activity/eC;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/eC;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->A:Lcom/vivo/sdkplugin/activity/eC;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/eC;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    return-void
.end method
