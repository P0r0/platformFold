.class public Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final IS_EMAIL:Ljava/lang/String; = "isEmail"

.field public static final REGIST_SUCCESS:I = 0x5

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"

.field public static isfinished:Z


# instance fields
.field private A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

.field private B:J

.field private C:J

.field private D:Landroid/widget/RelativeLayout;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/Button;

.field private I:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

.field private J:[Ljava/lang/String;

.field private K:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

.field a:Landroid/content/Context;

.field b:Z

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/res/Resources;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/HandlerThread;

.field private o:Lcom/vivo/sdkplugin/activity/cZ;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/util/Map;

.field private s:Landroid/widget/Button;

.field public smsReceiver:Landroid/content/BroadcastReceiver;

.field private t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Z

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Lcom/vivo/sdkplugin/activity/dd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->isfinished:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/vivo/sdkplugin/activity/dc;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/dc;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k:Landroid/graphics/drawable/Drawable;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o:Lcom/vivo/sdkplugin/activity/cZ;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->q:Z

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b:Z

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->E:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->F:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "openid"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "vivoToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pacakgefrom"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visitor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pwd"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->J:[Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/activity/cQ;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cQ;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->K:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/cR;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cR;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 3

    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dd;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    iget-wide v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->setUserAndTime(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->setUserSysTime(Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    return-void
.end method

.method private a(I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;J)V
    .registers 4

    iput-wide p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Lcom/vivo/sdkplugin/activity/dd;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->E:Z

    return-void
.end method

.method private b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 6

    const/4 v4, 0x1

    sput-boolean v4, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->isfinished:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_find_verify_code_again"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    const-string v1, "vivo_register_other_button"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;J)V
    .registers 5

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->F:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->q:Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/activity/dd;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V
    .registers 6

    const/4 v3, 0x0

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    if-nez v1, :cond_22

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/cZ;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/activity/cZ;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o:Lcom/vivo/sdkplugin/activity/cZ;

    :cond_22
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h:Landroid/os/Handler;

    if-nez v1, :cond_2d

    new-instance v1, Lcom/vivo/sdkplugin/activity/dc;

    invoke-direct {v1, p0, v3}, Lcom/vivo/sdkplugin/activity/dc;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h:Landroid/os/Handler;

    :cond_2d
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_39

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(I)V

    :goto_38
    return-void

    :cond_39
    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o:Lcom/vivo/sdkplugin/activity/cZ;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/cZ;->sendEmptyMessage(I)Z

    goto :goto_38
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account"

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------mPassword: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   md5Pwd:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v5, "e"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pwd"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getTempUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->J:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryOneTemp([Ljava/lang/String;Landroid/content/Context;)Lcom/vivo/sdkplugin/model/MAccountInfo;

    move-result-object v0

    const-string v1, "PhoneRegisterCommitActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------MAccountInfo----------: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    :cond_8d
    const-string v1, "PhoneRegisterCommitActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "********LocalUUID, uuid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string v1, "uuid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_SUBREGFORSDK_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/da;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/da;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "getAccountInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GETSUBACCOUNTINFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/db;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/db;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_46
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

    goto :goto_30
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    return v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(I)V

    return-void
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->I:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->K:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    return-void
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic u(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->E:Z

    return v0
.end method

.method static synthetic v(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    return-wide v0
.end method

.method static synthetic w(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    :goto_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/vivo/sdkplugin/GetVerifyCodeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->getVerifyCode(Ljava/util/HashMap;)V

    :goto_37
    return-void

    :cond_38
    const/4 v0, 0x1

    goto :goto_16

    :cond_3a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v1, "\u8d26\u53f7\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method

.method static synthetic x(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/16 v4, 0x14

    const/4 v3, -0x1

    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_9a

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void

    :pswitch_2c
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromaddsubaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v3, :cond_4d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    :cond_46
    invoke-virtual {p0, v3, p3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto :goto_2b

    :cond_4d
    if-ne p2, v3, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto :goto_2b

    :pswitch_7f
    if-ne p2, v3, :cond_88

    invoke-virtual {p0, v3, p3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto :goto_2b

    :cond_88
    if-ne p2, v4, :cond_91

    invoke-virtual {p0, v4}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto :goto_2b

    :cond_91
    const/16 v0, 0x15

    if-ne p2, v0, :cond_2b

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto :goto_2b

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_7f
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    const-wide/16 v4, 0x3e8

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "***********************onCreate***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_phone_register_commit_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setContentView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/RegisterManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/RegisterManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    const-string v1, "isEmail"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    :cond_49
    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mAccountNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEmail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_103

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->getTimeByUser(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->A:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->getUserSysTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    div-long/2addr v2, v4

    const-string v6, "PhoneRegisterCommitActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " releaseTime: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " systime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lastsystim:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " indexTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_34e

    iget-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->C:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    :goto_ed
    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " indexTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_total_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "switch_secret_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "switch_secret_btn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "commit_register_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_reg_pwd_label"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "pwd_input"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/vivo/sdkplugin/activity/cS;

    invoke-direct {v2, p0, v0}, Lcom/vivo/sdkplugin/activity/cS;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->x:Landroid/widget/ImageView;

    const-string v1, "vivo_show_pwd_check_off"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_num_label"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "phone_num_verify_input"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/vivo/sdkplugin/activity/cT;

    invoke-direct {v2, p0, v0}, Lcom/vivo/sdkplugin/activity/cT;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "show_accout_label"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->y:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cU;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cU;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->w:Z

    if-eqz v0, :cond_370

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->v:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "vivo_account_registe_email"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    const-string v1, "string"

    const-string v2, "vivo_email_verify"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_355

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_has_send_msg_to_email"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getSecretAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24b
    :goto_24b
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "get_verify_code_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "get_verify_code_start"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "get_verify_code_end"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cV;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cV;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->H:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->H:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cW;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cW;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->G:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cX;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cX;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->s:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cY;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cY;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->i:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/dd;

    iget-wide v2, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/dd;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->t:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->z:Lcom/vivo/sdkplugin/activity/dd;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dd;->start()Landroid/os/CountDownTimer;

    new-instance v0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->I:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-void

    :cond_34e
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->B:J

    goto/16 :goto_ed

    :cond_355
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_has_send_msg_to_email"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    aput-object v6, v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24b

    :cond_370
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->v:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "vivo_account_registe_phone"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->c:Landroid/widget/EditText;

    const-string v1, "string"

    const-string v2, "vivo_phone_num_verify"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_has_send_msg_to_phone"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    aput-object v6, v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24b
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    sparse-switch p1, :sswitch_data_34

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_e

    :sswitch_28
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    goto :goto_a

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_f
        0x64 -> :sswitch_28
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "---------------onDestroy()-------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->n:Landroid/os/HandlerThread;

    :cond_16
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->I:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->cancelReportFirstLogin()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(I)V

    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "---------------onStop()-------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public returnResult(Ljava/util/Map;)V
    .registers 7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pcsCancle="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->q:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
