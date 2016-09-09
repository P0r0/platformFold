.class public Lcom/vivo/sdkplugin/activity/LoginActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final ACTION_LOGIN_OUT:Ljava/lang/String; = "RegisterActivity_action"

.field public static final ACTION_TEMP_LOGIN_UPDATE:Ljava/lang/String; = "action_temp_login_update"

.field public static final MSG_GET_SUB_ACCOUNT_FAILD:I = 0xf

.field public static final MSG_GET_SUB_ACCOUNT_INFO:I = 0xd

.field public static final MSG_GET_SUB_ACCOUNT_SUCCESS:I = 0xe

.field public static lastTime:J

.field public static loginFromSp:Z

.field public static loginFromUI:Z

.field public static tempLogin:Z


# instance fields
.field private A:Z

.field private B:Ljava/util/List;

.field private C:[Ljava/lang/String;

.field private D:[Ljava/lang/String;

.field private E:Ljava/util/ArrayList;

.field private F:Landroid/widget/PopupWindow;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

.field private M:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

.field private N:Lcom/vivo/sdkplugin/PopupMenu;

.field private O:Z

.field private P:Landroid/content/BroadcastReceiver;

.field private Q:Landroid/app/Dialog;

.field private R:Lcom/vivo/sdkplugin/activity/cM;

.field private S:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

.field private T:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

.field a:Landroid/widget/LinearLayout;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field public mFindQueBtn:Landroid/widget/ImageView;

.field public mInflater:Landroid/view/LayoutInflater;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/os/Handler;

.field private p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private q:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

.field private r:Lcom/vivo/sdkplugin/LoginCenter;

.field private s:I

.field private t:Landroid/os/HandlerThread;

.field private u:Lcom/vivo/sdkplugin/activity/cI;

.field private v:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

.field private w:Z

.field private x:Lcom/vivo/sdkplugin/data/DBHelper;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->tempLogin:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->lastTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    iput-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->t:Landroid/os/HandlerThread;

    iput-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->u:Lcom/vivo/sdkplugin/activity/cI;

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->y:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    iput-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "openid"

    aput-object v1, v0, v5

    const-string v1, "vivoToken"

    aput-object v1, v0, v6

    const-string v1, "id"

    aput-object v1, v0, v7

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

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->C:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "vivoToken"

    aput-object v1, v0, v5

    const-string v1, "id"

    aput-object v1, v0, v6

    const-string v1, "openid"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->D:[Ljava/lang/String;

    iput-boolean v5, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->I:Z

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->K:Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/activity/ci;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/ci;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->M:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->O:Z

    new-instance v0, Lcom/vivo/sdkplugin/activity/cv;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cv;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->P:Landroid/content/BroadcastReceiver;

    iput-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    new-instance v0, Lcom/vivo/sdkplugin/activity/cA;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cA;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->S:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/cB;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/cB;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->T:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    return-void
.end method

.method static synthetic A(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    return v0
.end method

.method static synthetic B(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c()V

    return-void
.end method

.method static synthetic C(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 9

    const/4 v3, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_find_que_layout"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "vivo_feedback_btn"

    const-string v2, "id"

    invoke-static {p0, v2, v0}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Lcom/vivo/sdkplugin/activity/cn;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/cn;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 v0, 0x7e

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "color"

    const-string v4, "translucent_background2"

    invoke-static {p0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_ce

    aget v0, v3, v7

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x28

    aget v0, v3, v6

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0xa

    :goto_90
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "location: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " popWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/vivo/sdkplugin/activity/co;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/activity/co;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v7, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-boolean v6, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    return-void

    :cond_ce
    aget v0, v3, v7

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    aget v0, v3, v6

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x14

    goto :goto_90
.end method

.method static synthetic D(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->g()V

    return-void
.end method

.method static synthetic E(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic F(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic G(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->O:Z

    return v0
.end method

.method static synthetic H(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic I(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic J(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic K(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic L(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/PopupMenu;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    return-object v0
.end method

.method static synthetic M(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->d()V

    return-void
.end method

.method static synthetic N(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f()V

    return-void
.end method

.method static synthetic O(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a()V

    return-void
.end method

.method static synthetic P(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_41

    :cond_25
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_account_loginempty_wrong"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_40
    return-void

    :cond_41
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_54

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    goto :goto_40

    :cond_54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----------mPassword: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   md5Pwd:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v1, "e"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pwd"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    sput-boolean v5, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setStartTime(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->r:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/LoginCenter;->doVivoLogin(Ljava/util/HashMap;)V

    goto :goto_40
.end method

.method static synthetic Q(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 4

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------turnToPhoneRegisterActivity() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->hasSimAndEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "009"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_2a
    return-void

    :cond_2b
    const-string v0, "009"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2a
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .registers 3

    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 5

    const-string v0, "------------refreshMoreBtn()---------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/cC;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cC;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(I)V
    .registers 5

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----curDlgId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

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

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    if-eq v0, p1, :cond_2f

    iput p1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->showDialog(I)V

    :cond_2f
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;ILjava/lang/String;)V
    .registers 6

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Landroid/os/Message;)V
    .registers 6

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "--------logUIHandlerMsg---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_86

    :goto_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg.object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_25
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_GET_TOKEN_INFO_FAILD---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_2d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_GET_TOKEN_INFO_SUCCESS---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_35
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_GET_SUB_ACCOUNT_SUCCESS---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_3d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_GET_SUB_ACCOUNT_FAILD---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_45
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_LOGIN_SUCCESS---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_4d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_TEMP_LOGIN_SUCCESS---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_55
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_LOGIN_FAILED---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_5d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_NETWORK_CONNECT_FAILED---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_65
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_NETWORK_GET_MSGSTSTE_CONNECT_FAILED---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_6d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------MSG_SERVER_LOGIN_PWDERROR---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_75
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------SERVER_STAT_SMS_ERROR---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_7d
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "----------SERVER_USERNAME_EXIST---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    nop

    :sswitch_data_86
    .sparse-switch
        0x2 -> :sswitch_45
        0x3 -> :sswitch_55
        0xd -> :sswitch_5d
        0xe -> :sswitch_35
        0xf -> :sswitch_3d
        0x15 -> :sswitch_2d
        0x16 -> :sswitch_25
        0x32 -> :sswitch_4d
        0x33 -> :sswitch_65
        0x34 -> :sswitch_6d
        0x194 -> :sswitch_75
        0x200 -> :sswitch_7d
    .end sparse-switch
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Lcom/vivo/sdkplugin/PopupMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->O:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_39
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_49
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    :cond_4f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method private b()V
    .registers 13

    const/4 v11, 0x3

    const/16 v10, 0x17

    const/16 v9, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "PLUGIN_LoginActivity"

    const-string v3, "-------doFirstLogin() enter ---------"

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->C:[Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryGameAccount(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/sdkplugin/model/MAccountInfo;

    move-result-object v3

    if-eqz v3, :cond_3e2

    move v0, v1

    :goto_1f
    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->isVivoAccountLogin(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryValue(Landroid/content/Context;)I

    move-result v5

    const-string v6, "PLUGIN_LoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--------isBBkAccoutLogin: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PLUGIN_LoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--------isVivoAccountLogin: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PLUGIN_LoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--------value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1e0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getOpenid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVivoToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVisitor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    :cond_b2
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    if-nez v0, :cond_1bb

    const-string v0, "PLUGIN_LoginActivity"

    const-string v3, "-------------------------"

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "account:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pwd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "visitor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_122

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_122
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "style"

    const-string v5, "Transparent"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTheme(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    :cond_14a
    :goto_14a
    return-void

    :cond_14b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-direct {p0, v10}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(I)V

    :goto_15a
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    sput-boolean v1, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    sput-boolean v1, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setStartTime(Landroid/content/Context;)V

    goto :goto_14a

    :cond_167
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->g()V

    goto :goto_15a

    :cond_173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "account"

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v3, "pwd"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "e"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->r:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/LoginCenter;->doVivoLogin(Ljava/util/HashMap;)V

    goto :goto_15a

    :cond_1bb
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "AccountLogin1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_14a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14a

    :cond_1e0
    if-eqz v4, :cond_29c

    const-string v0, "PLUGIN_LoginActivity"

    const-string v3, "content://com.bbk.account.accountinfo/accountinfo"

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    if-nez v0, :cond_277

    :try_start_1ef
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->D:[Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    sget-object v4, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->ACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryValues([Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1fb} :catch_26b

    :goto_1fb
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_270

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v11, :cond_270

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_261

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    :cond_261
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    invoke-direct {p0, v10}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(I)V

    goto/16 :goto_14a

    :catch_26b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1fb

    :cond_270
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_277
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "AccountLogin2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_14a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14a

    :cond_29c
    if-eqz v5, :cond_3ac

    sput-boolean v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    if-nez v0, :cond_3a5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->C:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryValues([Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_39e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getOpenid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVivoToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVisitor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    if-eqz v1, :cond_2ff

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    :cond_2ff
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "psw:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "packageNameInDB:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "gamePackageName:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "token:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getVivoToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_384

    invoke-direct {p0, v10}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(I)V

    goto/16 :goto_14a

    :cond_384
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v1

    if-nez v1, :cond_397

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getPwd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_397
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_39e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_3a5
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_3ac
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    if-eqz v0, :cond_3b7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_3b7
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------turnToRegisterActivity() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->hasSimAndEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14a

    :cond_3d3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->finish()V

    goto/16 :goto_14a

    :cond_3e2
    move v0, v2

    goto/16 :goto_1f
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doInBackground,msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->t:Landroid/os/HandlerThread;

    if-nez v0, :cond_34

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.ACCOUNT_INFO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->t:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/cI;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/cI;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->u:Lcom/vivo/sdkplugin/activity/cI;

    :cond_34
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->o:Landroid/os/Handler;

    if-nez v0, :cond_3f

    new-instance v0, Lcom/vivo/sdkplugin/activity/cN;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/cN;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->o:Landroid/os/Handler;

    :cond_3f
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkUtilities.getConnectionType(this)="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    :goto_6a
    return-void

    :cond_6b
    const/16 v0, 0x13

    if-eq p1, v0, :cond_75

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->I:Z

    :cond_75
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->u:Lcom/vivo/sdkplugin/activity/cI;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/cI;->sendEmptyMessage(I)Z

    goto :goto_6a

    :cond_7f
    iput-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    const-string v0, "-----\u8fdb\u5ea6\u6846\u8fd8\u5728\u8fdb\u884c\uff0c\u6309\u4e86\u8fd4\u56de\u952e\uff0c\u4e0d\u80fd\u5f80\u4e0b\u6267\u884c-----"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    goto :goto_6a
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 4

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------checkLogin() enter ---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------isFirstIn------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-----------doNotFirstLogin() enter ----------- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--------bbkAccountManager.getAutoLogin(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAutoLogin()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVisiter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAutoLogin()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_80
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b()V

    goto :goto_24
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V
    .registers 3

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->I:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->v:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->setVisibility(I)V

    invoke-static {p0, p1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createNormalLoginDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->Q:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->Q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->turnToGameTime()V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    return-void
.end method

.method private c(I)V
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    iget v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    if-ne v0, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->j:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "vivo_his_up_btn"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->j:Landroid/widget/ImageView;

    const-string v1, "vivo_his_down_btn"

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->h()V

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/LoginActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    :cond_c
    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->y:Z

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private f()V
    .registers 3

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "---------------exportDB() enter------------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cx;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cx;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "------------getTokenInfo() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GETTOKEN_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/cL;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/cL;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method private g()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->r:Lcom/vivo/sdkplugin/LoginCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/LoginCenter;->doTempLogin(Ljava/util/HashMap;)V

    sput-boolean v3, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromUI:Z

    sput-boolean v3, Lcom/vivo/sdkplugin/activity/LoginActivity;->tempLogin:Z

    sput-boolean v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->loginFromSp:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setStartTime(Landroid/content/Context;)V

    goto :goto_f
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-----------getReportActivate() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_19
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "model"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p_n"

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v1, "5.0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;

    invoke-direct {v0, p0, v5, v5}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REPORTACTIVATE_URL:Ljava/lang/String;

    new-instance v6, Lcom/vivo/sdkplugin/activity/cJ;

    invoke-direct {v6, p0, v3}, Lcom/vivo/sdkplugin/activity/cJ;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-object v2

    :cond_58
    move-object v0, v5

    goto :goto_19
.end method

.method private h()V
    .registers 4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_temp_login_tips"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    return v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------getSubAccountInfo() enter---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GETSUBACCOUNTINFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/cK;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/cK;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_46
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

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

.method static synthetic k(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/LoginActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->L:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 6

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "--------showTempUpdateDialog()------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->ifShowTempUpdateDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/vivo/sdkplugin/TempNoticeDialog;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->S:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->T:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/sdkplugin/TempNoticeDialog;-><init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameLastTempUpNoNoticeTime(J)V

    :goto_27
    return-void

    :cond_28
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->h()V

    goto :goto_27
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->i()V

    return-void
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->isUnionAppOnForeground()Z

    move-result v0

    const-string v1, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---\u5f53\u524d\u6e38\u620f\u662f\u5426\u5728\u524d\u53f0\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_26
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->finish()V

    return-void
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_msg_bind_security_email"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "vivo_notify_icon"

    invoke-static {v4, v5, v6}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->icon:I

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "vivo_title_bind_security_email"

    invoke-static {v5, v6, v7}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic s(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/Timer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic t(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 3

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "------turnToGame------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->isUnionAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->startServiceSendGameInfo(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->finish()V

    :cond_15
    return-void
.end method

.method static synthetic u(Lcom/vivo/sdkplugin/activity/LoginActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->C:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    return-object v0
.end method

.method static synthetic w(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    return v0
.end method

.method static synthetic y(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e()V

    return-void
.end method

.method static synthetic z(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->B:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/PopupMenu;->setItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->N:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/PopupMenu;->showAsDropDown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->d()V

    :cond_16
    return-void
.end method


# virtual methods
.method public isUnionAppOnForeground()Z
    .registers 8

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PLUGIN_LoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---topActivity-------:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " topPackageName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u3000gamePackageName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_5e
    const/4 v0, 0x1

    :goto_5f
    return v0

    :cond_60
    move v0, v1

    goto :goto_5f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v3, -0x1

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------onActivityResult-----------requestCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_33

    if-ne p2, v3, :cond_33

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->i()V

    :goto_32
    return-void

    :cond_33
    const/4 v0, 0x1

    if-ne p1, v0, :cond_71

    if-ne p2, v3, :cond_71

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--\u66f4\u65b0\u5bc6\u7801\u540e\uff0c\u8d26\u53f7\u662f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u65b0\u5bc6\u7801\u662f\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->update(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f()V

    goto :goto_32

    :cond_71
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_32
.end method

.method public onBackPressed()V
    .registers 4

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "***********onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDBhasChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->y:Z

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f()V

    :cond_24
    const-string v0, "003"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->q:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLoginCancled()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceCancelLogin(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "**********onCreate*************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vivo/sdkplugin/activity/LoginActivity;->lastTime:J

    sub-long/2addr v0, v2

    const-string v2, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interval="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3c

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "interval not long enough, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->lastTime:J

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->finish()V

    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/activity/LoginActivity;->lastTime:J

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bbkAccountManager.getIsSinglePay()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsSinglePay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsSinglePay()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsSinglePay(Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkgname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is singlepay, appId is null, finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->finish()V

    :cond_ab
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_account_login"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    const-string v0, "001"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->x:Lcom/vivo/sdkplugin/data/DBHelper;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->x:Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->onbuid()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->exist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_103

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cD;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cD;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_103
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_118

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    :cond_118
    const-string v1, "switchAccount"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    const-string v1, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------getGameKilled()---: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameKilled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameKilled()Z

    move-result v1

    if-eqz v1, :cond_14a

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameKilled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->w:Z

    :cond_14a
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameIsFirstIn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    const-string v1, "PLUGIN_LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--------\u662f\u5426\u662f\u7b2c\u4e00\u6b21\u8fdb\u5165\u6e38\u620f--------:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oritation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gamePackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->H:Z

    if-eqz v1, :cond_1b4

    const-string v1, "oritation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------\u83b7\u53d6\u5230\u6e38\u620f\u7684\u4f20\u7684---oritation-----:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOrientation(I)V

    :cond_1b4
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameIsFirstIn(Z)V

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ca

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setAppIdFromLoginActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1ca
    const-string v1, "sdkVersionCode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d7

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setSdkverFromLoginActivity(Landroid/content/Context;I)V

    :cond_1d7
    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_total_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->v:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->v:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->v:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cE;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cE;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->setOnSizeChangeListener(Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_login_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_num_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_password_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cG;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cG;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_user_image"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_pwd_image"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "temp_account_login"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_find_ques_btn"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->mFindQueBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_find_ques_btn_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/vivo/sdkplugin/activity/cH;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/cH;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/cj;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cj;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ck;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ck;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cl;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cl;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "vivo_for_pwd_btn"

    const-string v1, "id"

    invoke-static {p0, v1, v0}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cm;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cm;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "clean_account_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "clean_secret_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "show_total_account_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "show_total_account_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "devider_line"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_login"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_registe"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->n:Landroid/widget/TextView;

    new-instance v0, Lcom/vivo/sdkplugin/activity/cN;

    invoke-direct {v0, p0, v5}, Lcom/vivo/sdkplugin/activity/cN;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->o:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->q:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/LoginCenter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->o:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/LoginCenter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->r:Lcom/vivo/sdkplugin/LoginCenter;

    new-instance v0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->L:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->k:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cp;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cp;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cs;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cs;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ct;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/ct;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cu;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cu;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cw;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cw;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "RegisterActivity_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_temp_login_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->M:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->checkUpdate(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "PLUGIN_LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curDlgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    sparse-switch p1, :sswitch_data_9a

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_26
    return-object v0

    :sswitch_27
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e"

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_26

    :sswitch_32
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/cy;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cy;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_22

    :sswitch_4e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_cue"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_account_login_tip"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_ok_label"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/cz;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/cz;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_22

    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_27
        0x2 -> :sswitch_4e
        0x64 -> :sswitch_32
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "**********onDestroy*************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cM;->cancel()V

    :cond_13
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->Q:Landroid/app/Dialog;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->Q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_38
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->P:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->r:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/LoginCenter;->cancelLogin()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->L:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->cancelReportFirstLogin()V

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->dismissDialog()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DialogInterface,keyCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curDlgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    if-eq p2, v2, :cond_28

    const/4 v2, 0x3

    if-ne p2, v2, :cond_67

    :cond_28
    const-string v2, "PLUGIN_LoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onKey,keyCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curDlgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isOnLoading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->I:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->s:I

    if-nez v2, :cond_67

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->I:Z

    if-eqz v2, :cond_67

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->J:Z

    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_66
    return v0

    :cond_67
    move v0, v1

    goto :goto_66
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onPause()V

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "------onPause()----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->z:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->e()V

    :cond_11
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->A:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c()V

    :cond_18
    return-void
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onRestart()V

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "-------onRestart() --------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cM;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onResume()V

    const-string v0, "PLUGIN_LoginActivity"

    const-string v1, "**********onResume*************"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->p:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getReportActivate()Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->b(I)V

    :cond_17
    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->y:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->f()V

    :cond_a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cM;->pause()V

    :cond_13
    return-void
.end method

.method public turnToGameTime()V
    .registers 7

    new-instance v0, Lcom/vivo/sdkplugin/activity/cM;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/cM;-><init>(Lcom/vivo/sdkplugin/activity/LoginActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/LoginActivity;->R:Lcom/vivo/sdkplugin/activity/cM;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cM;->start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    return-void
.end method
