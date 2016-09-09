.class public Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"

.field public static mAgreeProtocal:Z


# instance fields
.field private A:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

.field private B:Landroid/app/Dialog;

.field private C:Lcom/vivo/sdkplugin/activity/dF;

.field a:Z

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/vivo/sdkplugin/activity/dC;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/content/Intent;

.field private n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private o:I

.field private p:Lcom/vivo/sdkplugin/LoginCenter;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/vivo/sdkplugin/activity/dJ;

.field private w:Z

.field private x:Landroid/widget/CheckBox;

.field private y:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

.field private z:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->mAgreeProtocal:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->d:Lcom/vivo/sdkplugin/activity/dC;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a:Z

    new-instance v0, Lcom/vivo/sdkplugin/activity/dt;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/dt;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->z:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/du;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/du;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->A:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_temp_update_cancel"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_temp_update_cancel"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_temp_update_cancel"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_temp_update_cancel"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_78
    return-void

    :cond_79
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_title_click_color"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_sub_notice"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_sub_notice"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "vivo_sub_notice"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_78
.end method

.method private a(I)V
    .registers 5

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeDismissDialog"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V
    .registers 5

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doInBackground,msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_20
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/dC;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/dC;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->d:Lcom/vivo/sdkplugin/activity/dC;

    :cond_3b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    if-nez v0, :cond_47

    new-instance v0, Lcom/vivo/sdkplugin/activity/dG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/dG;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    :cond_47
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_53

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(I)V

    :goto_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->d:Lcom/vivo/sdkplugin/activity/dC;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/dC;->sendEmptyMessage(I)Z

    goto :goto_52
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Lcom/vivo/sdkplugin/activity/dJ;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------showLoginSuccDialog-------------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {p0, p1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createNormalLoginDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->B:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->B:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->turnToGameTime()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "switchAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->finish()V

    return-void
.end method

.method private b(I)V
    .registers 5

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----curDlgId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    if-eq v0, p1, :cond_2f

    iput p1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->showDialog(I)V

    :cond_2f
    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->j:Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/util/Map;
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---------getSystemPhoneNum()-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "----------mSmsUUID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientuuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_GETMSGNUMBERFORONEKEYREG:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/dD;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/dD;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "----getMsgstatInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "----------mSmsUUID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clientuuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ONE_KEY_LOGIN_URL:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v7, Lcom/vivo/sdkplugin/activity/dE;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/dE;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->j:Z

    return v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/activity/dJ;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a()V

    return-void
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->y:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->ifShowTempUpdateDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/vivo/sdkplugin/TempNoticeDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->z:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->A:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_temp_login_tips"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Ljava/lang/String;)V

    goto :goto_19
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u767b\u5f55:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 3

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "------turnToGame------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendGameInfo(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->finish()V

    return-void
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w:Z

    return v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------turnToOtherActivity()------isOldUser: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a:Z

    if-eqz v0, :cond_28

    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u767b\u5f55"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b()V

    :goto_27
    return-void

    :cond_28
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u6ce8\u518c"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c()V

    goto :goto_27
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c()V

    return-void
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b()V

    return-void
.end method

.method static synthetic u(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic v(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dJ;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    return-void
.end method

.method static synthetic w(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic y(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 3

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(I)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->p:Lcom/vivo/sdkplugin/LoginCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/LoginCenter;->doTempLogin(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setStartTime(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public getIsOldUser()V
    .registers 3

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---isOldUser() enter-------cancelLoad: "

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/GetUserInfoManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/GetUserInfoManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->getUserInfo()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u767b\u5f55:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    if-nez p2, :cond_4f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->w:Z

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a()V

    goto :goto_40

    :cond_4f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_temp_login_tips"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Ljava/lang/String;)V

    :cond_6a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_40
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceCancelLogin(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "***********onCreate*************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_register_way_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->setContentView(I)V

    const-string v0, "026"

    const-string v1, "\u2014\u2014"

    invoke-static {v0, v1, p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->getSixRandomCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->r:Ljava/lang/String;

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------registerPwd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/dG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/dG;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/LoginCenter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/LoginCenter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->p:Lcom/vivo/sdkplugin/LoginCenter;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "protocol_select_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dv;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dv;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "total_parent_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_new_account_regist_view"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "register_onekey_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "temp_account_login"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "other_account_login_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "read_protocol_textview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_read_protocol"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "onekey_login_process_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "onekey_login_remain_time"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->u:Landroid/widget/TextView;

    new-instance v0, Lcom/vivo/sdkplugin/activity/dJ;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/dJ;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    new-instance v0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->y:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dw;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dw;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dx;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dx;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dy;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dy;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dz;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dz;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dA;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dA;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getIsOldUser()V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curDlgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I

    sparse-switch p1, :sswitch_data_58

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_26
    return-object v0

    :sswitch_27
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_26

    :sswitch_40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(I)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/dB;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dB;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_22

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_27
        0x64 -> :sswitch_40
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->stopService(Landroid/content/Intent;)Z

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "***********onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dF;->cancel()V

    :cond_19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->mAgreeProtocal:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dJ;->cancel()V

    iput-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->v:Lcom/vivo/sdkplugin/activity/dJ;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    :cond_2e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->y:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->cancelReportFirstLogin()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "RegisterOneKeyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onKey,keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_29

    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->removeDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->o:I
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1f} :catch_2a

    :goto_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1f
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onRestart()V

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "-------onRestart() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dF;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onResume()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/accounts/LogWatcherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->m:Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->x:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->mAgreeProtocal:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***********onStop*********,notify_msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dF;->pause()V

    :cond_21
    return-void
.end method

.method public turnToGameTime()V
    .registers 7

    new-instance v0, Lcom/vivo/sdkplugin/activity/dF;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/dF;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->C:Lcom/vivo/sdkplugin/activity/dF;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dF;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    return-void
.end method
