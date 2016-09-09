.class public Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;


# instance fields
.field a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

.field private b:Lcom/vivo/sdkplugin/activity/aK;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Landroid/content/Intent;

.field private t:Landroid/os/Handler;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b:Lcom/vivo/sdkplugin/activity/aK;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->c:Landroid/os/HandlerThread;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->q:Z

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->r:Z

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->t:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CommitUserContactActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "muuid"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mAccount"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mGameName"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mIMEI"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mTheHall"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mRoleName"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mRoleLevel"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mRoleClasses"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mEmail.getText().toString().trim()"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mPhone.getText().toString().trim()"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->o:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gamename"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imei"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gamearea"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rolename"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rolelevel"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "roleprofession"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payrecord"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->l:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "email"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phonenum"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPWDSUBGAMEINFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/aL;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/aL;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->q:Z

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;I)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->r:Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->q:Z

    return v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->u:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->r:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->q:Z

    if-eqz v0, :cond_41

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/aK;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/aK;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b:Lcom/vivo/sdkplugin/activity/aK;

    :cond_2b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->t:Landroid/os/Handler;

    if-nez v0, :cond_36

    new-instance v0, Lcom/vivo/sdkplugin/activity/aM;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/aM;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->t:Landroid/os/Handler;

    :cond_36
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_42

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a(I)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b:Lcom/vivo/sdkplugin/activity/aK;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/aK;->sendEmptyMessage(I)Z

    goto :goto_41
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_commit_user_contact_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->v:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->s:Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->s:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mIMEI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->f:Ljava/lang/String;

    const-string v1, "mGameName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->g:Ljava/lang/String;

    const-string v1, "mRoleName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->h:Ljava/lang/String;

    const-string v1, "mRoleLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->i:Ljava/lang/String;

    const-string v1, "mRoleClasses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->j:Ljava/lang/String;

    const-string v1, "mTheHall"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->k:Ljava/lang/String;

    const-string v1, "mrechargeamount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->l:Ljava/lang/String;

    const-string v1, "mrechargetime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->m:Ljava/lang/String;

    const-string v1, "mrechargenum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->n:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->o:Ljava/lang/String;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "exchange_num_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aC;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aC;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aD;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aD;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aE;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aE;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aF;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aF;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->v:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aG;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aG;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->u:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/aH;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aH;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/aM;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/aM;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->t:Landroid/os/Handler;

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const/16 v1, 0x64

    if-nez p1, :cond_22

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/aI;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/aI;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6c

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_cue"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_commit_user_contact_tip"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_ok_label"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/aJ;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/aJ;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    goto :goto_21

    :cond_6c
    if-ne p1, v1, :cond_76

    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    :cond_76
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_21
.end method
