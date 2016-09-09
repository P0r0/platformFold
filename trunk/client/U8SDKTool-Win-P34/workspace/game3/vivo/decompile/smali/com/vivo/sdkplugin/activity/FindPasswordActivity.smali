.class public Lcom/vivo/sdkplugin/activity/FindPasswordActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/vivo/sdkplugin/activity/bx;

.field private g:Landroid/os/Handler;

.field private h:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/Intent;

.field private u:Lcom/vivo/sdkplugin/net/HttpConnect;

.field private v:I

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->o:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->showDialog(I)V

    iput p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0, v0, p2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->showDialog(ILandroid/os/Bundle;)Z

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->z:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n:Z

    return-void
.end method

.method private b(I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_30

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.Account.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/bx;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/bx;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f:Lcom/vivo/sdkplugin/activity/bx;

    :cond_30
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g:Landroid/os/Handler;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/vivo/sdkplugin/activity/bB;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/bB;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->g:Landroid/os/Handler;

    :cond_3b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_47

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(I)V

    :goto_46
    return-void

    :cond_47
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f:Lcom/vivo/sdkplugin/activity/bx;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/bx;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->f:Lcom/vivo/sdkplugin/activity/bx;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/bx;->sendMessage(Landroid/os/Message;)Z

    goto :goto_46
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->p:Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->h:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-------verifyPwdQuestion() enter ----------"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "question"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "answer"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->VERIFY_PWD_QUESTION_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/bC;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/bC;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "commitAccountNum(), mAccountNum="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPASSWORD_COMMIT_ACCOUNT_NUM_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/by;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/by;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPASSWORD_BY_EMAIL_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/bz;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/bz;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iput v5, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0, v5}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPASSWORD_BY_QUESTION_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/bA;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/bA;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "code"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    return v0
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    return-void
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    return-void
.end method


# virtual methods
.method public cancelBgThread()V
    .registers 4

    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelBgThread, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e:Landroid/os/HandlerThread;

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->u:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/net/HttpConnect;->cancelConnect()V

    :cond_2b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->h:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->cancelBgThread()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    if-ne v2, p2, :cond_13

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, p3}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->finish()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    if-ne v2, p2, :cond_13

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->finish()V

    goto :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FindPasswordActivity"

    const-string v1, "----onCreate()------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_account_findpassword"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->y:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_num_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "next_step"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_total_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->w:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bi;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bi;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->x:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bp;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bp;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->y:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bq;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bq;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/br;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/br;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->h:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->t:Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->t:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_f2
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 13

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    sparse-switch p1, :sswitch_data_28e

    :goto_1c
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_20
    return-object v0

    :sswitch_21
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_20

    :sswitch_3a
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_send_email_success"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->r:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_commit_success"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_ok_label"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/sdkplugin/activity/bs;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/activity/bs;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/bt;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bt;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1c

    :sswitch_99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "string"

    const-string v4, "vivo_account_findpassword"

    invoke-static {v0, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "string"

    const-string v4, "vivo_from_question"

    invoke-static {v0, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "vivo_from_email"

    invoke-static {v2, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "vivo_from_phone"

    invoke-static {v4, v5, v6}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->o:Z

    if-eqz v6, :cond_e9

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n:Z

    if-eqz v0, :cond_f0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->p:Z

    if-eqz v0, :cond_103

    :try_start_f4
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isFindPhoneOpened"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_fd
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f4 .. :try_end_fd} :catch_130

    move-result v0

    :goto_fe
    if-nez v0, :cond_103

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/vivo/sdkplugin/activity/bu;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/bu;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/vivo/sdkplugin/activity/bv;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/bv;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bw;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bw;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1c

    :catch_130
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v3

    goto :goto_fe

    :sswitch_136
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string v5, "check_dialog"

    invoke-static {v1, v2, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "dialog_into_label"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v6, "dialog_error_label"

    invoke-static {v1, v2, v6}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v6, "id"

    const-string v7, "dialog_input"

    invoke-static {v2, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "vivo_input_answer"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v5, "type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_272

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v6, -0x10000

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v5, v9, :cond_25e

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "vivo_answer_empty_wrong"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1bd
    :goto_1bd
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->h:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget v5, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "vivo_question_lable"

    invoke-static {v6, v7, v8}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->j:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v3, "vivo_ok_label"

    invoke-static {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/bj;

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/activity/bj;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_question_next"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/bk;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bk;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "cancle"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/bl;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bl;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/vivo/sdkplugin/activity/bm;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/bm;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/bn;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bn;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1c

    :cond_25e
    const/4 v6, 0x6

    if-ne v5, v6, :cond_1bd

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "vivo_answer_wrong"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1bd

    :cond_272
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1bd

    :sswitch_279
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/bo;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bo;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1c

    :sswitch_data_28e
    .sparse-switch
        0x0 -> :sswitch_21
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_99
        0x4 -> :sswitch_136
        0x64 -> :sswitch_279
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->cancelBgThread()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "FindPasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onKey,keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curDlgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2f

    iget v1, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->v:I

    if-nez v1, :cond_2e

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->cancelBgThread()V

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    const-string v0, "018"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
