.class public Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static mActivity:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Landroid/widget/ImageView;

.field private I:Z

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/content/BroadcastReceiver;

.field private L:Landroid/os/Handler;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/Window;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field public finishRecevier:Landroid/content/BroadcastReceiver;

.field private g:Landroid/widget/Button;

.field private h:Landroid/os/HandlerThread;

.field private i:Lcom/vivo/sdkplugin/activity/D;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/Button;

.field public questionArray:Lorg/json/JSONArray;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g:Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->i:Lcom/vivo/sdkplugin/activity/D;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->k:Z

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->I:Z

    new-instance v0, Lcom/vivo/sdkplugin/activity/l;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/l;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/v;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/v;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->K:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/vivo/sdkplugin/activity/w;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/w;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/x;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/x;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->L:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/activity/y;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/y;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finishRecevier:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/D;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/D;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->i:Lcom/vivo/sdkplugin/activity/D;

    :cond_1f
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(I)V

    :goto_2a
    return-void

    :cond_2b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->i:Lcom/vivo/sdkplugin/activity/D;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/D;->sendEmptyMessage(I)Z

    goto :goto_2a
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->showDialog(ILandroid/os/Bundle;)Z

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------doStartGameWithPackageName-------:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1e} :catch_6b

    move-result-object v0

    :goto_1f
    if-eqz v0, :cond_6a

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_6a

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6a
    return-void

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1f
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->I:Z

    return-void
.end method

.method private b(I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 7

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------\u5173\u95ed\u6e38\u620f\u8fdb\u7a0b\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "android.app.ActivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->stopAssistService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4f} :catch_50

    :goto_4f
    return-void

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->k:Z

    return-void
.end method

.method private c(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 7

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------\u5173\u95edapk\u8fdb\u7a0b\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "android.app.ActivityManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    :goto_47
    return-void

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->G:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b:I

    return v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->removeDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->M:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(I)V

    return-void
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->o:Ljava/lang/String;

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "security_question"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v0, ""

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->t:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_not_filled_label"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_43
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_7e

    const-string v0, ""

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->u:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u7ed1\u5b9a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    const/4 v3, 0x7

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e10\u53f7\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_unBind_label"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7d
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "getAccountInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_61

    move v0, v4

    :goto_13
    const-string v1, ""

    if-ne v3, v1, :cond_63

    move v1, v4

    :goto_18
    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AccountPersonalCenterActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uuid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "uuid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GET_ACCOUNT_INFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/E;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/E;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_61
    move v0, v5

    goto :goto_13

    :cond_63
    move v1, v5

    goto :goto_18

    :cond_65
    move-object v0, v3

    goto :goto_26
.end method

.method static synthetic o(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "version"

    const-string v1, "1.0.0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkVersion"

    const-string v1, "5.0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "packageName"

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "1"

    :goto_3f
    const-string v1, "visitor"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "model"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sysver"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "s"

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_VCOIN_QUERYBALANCE_URL:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bbk/payment/util/Vw;->getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    invoke-virtual {v0, v6}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_VCOIN_QUERYBALANCE_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/F;

    invoke-direct {v7, p0, v6}, Lcom/vivo/sdkplugin/activity/F;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_97
    const-string v0, "0"

    goto :goto_3f

    :cond_9a
    move-object v0, v2

    goto :goto_5d
.end method

.method static synthetic p(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "-------verifyPwdQuestion() enter ----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->N:Ljava/lang/String;

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "questions: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->O:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " question_num: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  queString: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->N:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a5

    move v0, v4

    :goto_65
    const-string v1, ""

    if-ne v3, v1, :cond_a7

    move v1, v4

    :goto_6a
    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v0

    :goto_78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "question"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->N:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "answer"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->M:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->VERIFY_PWD_QUESTION_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/G;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/G;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void

    :cond_a5
    move v0, v5

    goto :goto_65

    :cond_a7
    move v1, v5

    goto :goto_6a

    :cond_a9
    move-object v0, v3

    goto :goto_78
.end method

.method static synthetic q(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/4 v3, -0x1

    const-string v0, "AccountPersonalCenterActivity"

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

    packed-switch p1, :pswitch_data_e4

    :pswitch_22
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void

    :pswitch_2a
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromaddsubaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v3, :cond_4b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_44
    invoke-virtual {p0, v3, p3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto :goto_29

    :cond_4b
    if-ne p2, v3, :cond_29

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto :goto_29

    :pswitch_7d
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(I)V

    goto :goto_29

    :pswitch_83
    if-eqz p3, :cond_29

    if-ne p2, v3, :cond_29

    const-string v0, "pay_info"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "pay_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "blance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v4, "id"

    const-string v5, "vivo_account_personal_center_vcoin_state"

    invoke-static {v0, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    long-to-double v2, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "V\u94bb"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    nop

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_83
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_7d
        :pswitch_22
        :pswitch_22
        :pswitch_7d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "***********************onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->L:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOrientation()I

    move-result v0

    const-string v1, "AccountPersonalCenterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--------oritation: ----------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gamePacakge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_337

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_account_personal_center_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setContentView(I)V

    :goto_52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "vivo_action_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finishRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->mActivity:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "vivo_personal_center_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_account_personal_center_gift_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_visitor_upgrade_tip_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_head_img"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->H:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->isDeaultAccount()Z

    move-result v0

    if-eqz v0, :cond_348

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->H:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "vivo_sub_icon_blue"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_f0
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_chat"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->C:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/z;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/z;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "deal_record_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->B:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->B:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/A;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/A;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "switch_account_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->E:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->E:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "temp_update_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_old_login_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "change_password_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "security_question_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_account_personal_center_vcoin_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->q:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "security_question_state"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_state"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_name_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "pwd_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_verify_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "show_pwd_button"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/B;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/B;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/C;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/C;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->questionArray:Lorg/json/JSONArray;

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bbkAccountManager.getVisitor()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_359

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_func_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_account_personal_center_gift_state"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6e38\u5ba2\u65e0\u6cd5\u4f7f\u7528\u793c\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(I)V

    :goto_2f3
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_account_text"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_sub_account_text"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_372

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->y:Landroid/widget/TextView;

    const-string v1, "\u6e38\u5ba2\u5e10\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_32f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_337
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_account_personal_center_layout_land"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setContentView(I)V

    goto/16 :goto_52

    :cond_348
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->H:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "vivo_sub_icon_red"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_f0

    :cond_359
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vivo.sdkplugin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_36c
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(I)V

    goto :goto_2f3

    :cond_372
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32f
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 14

    const/4 v7, 0x4

    const/high16 v6, -0x10000

    const/4 v10, 0x5

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_2a8

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_13
    return-object v0

    :sswitch_14
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_13

    :sswitch_2d
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    goto :goto_f

    :sswitch_38
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b:I

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout"

    const-string v3, "check_dialog"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "dialog_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v3, "dialog_into_label"

    invoke-static {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "dialog_input"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "vivo_input_password"

    invoke-static {v2, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "vivo_ok_label"

    invoke-static {v2, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/vivo/sdkplugin/activity/m;

    invoke-direct {v4, p0, v1}, Lcom/vivo/sdkplugin/activity/m;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "cancle"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/n;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/activity/n;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vivo/sdkplugin/activity/o;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/o;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    if-ne p1, v7, :cond_f9

    const-string v1, "errorMsg"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f9
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d:Landroid/view/Window;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d:Landroid/view/Window;

    invoke-virtual {v1, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/p;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/activity/p;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_13

    :sswitch_115
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "layout"

    const-string v3, "check_dialog"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "dialog_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v3, "dialog_into_label"

    invoke-static {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "dialog_error_label"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "type"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1dc

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v3, v10, :cond_1c9

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "vivo_question_answer_empty_wrong"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_17d
    :goto_17d
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "dialog_input"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/16 v3, 0xc0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget v4, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuesTion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getQuestion(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountPersonalCenterActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "question_num="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", questionItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1e2

    invoke-direct {p0, v9}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(I)V

    goto/16 :goto_f

    :cond_1c9
    const/4 v4, 0x6

    if-ne v3, v4, :cond_17d

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "vivo_answer_wrong"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17d

    :cond_1dc
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17d

    :cond_1e2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "vivo_question_lable"

    invoke-static {v6, v7, v8}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->F:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "dialog_input"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "vivo_input_answer"

    invoke-static {v2, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "vivo_ok_label"

    invoke-static {v2, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/vivo/sdkplugin/activity/q;

    invoke-direct {v4, p0, v1, p1}, Lcom/vivo/sdkplugin/activity/q;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;I)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "vivo_question_next"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/r;

    invoke-direct {v2, p0, p1}, Lcom/vivo/sdkplugin/activity/r;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v4, "cancle"

    invoke-static {v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/activity/s;

    invoke-direct {v2, p0, p1}, Lcom/vivo/sdkplugin/activity/s;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vivo/sdkplugin/activity/t;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/activity/t;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d:Landroid/view/Window;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d:Landroid/view/Window;

    invoke-virtual {v2, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->L:Landroid/os/Handler;

    new-instance v3, Lcom/vivo/sdkplugin/activity/u;

    invoke-direct {v3, p0, v0}, Lcom/vivo/sdkplugin/activity/u;-><init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move-object v0, v1

    goto/16 :goto_13

    nop

    :sswitch_data_2a8
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_38
        0x3 -> :sswitch_115
        0x4 -> :sswitch_38
        0x64 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "------onDestroy()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    :try_start_a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finishRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_21

    :goto_14
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h:Landroid/os/HandlerThread;

    :cond_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1f

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setResult(I)V

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(I)V

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyDown: keyCode -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_2c

    :goto_17
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_1c
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "KeyEvent.KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :pswitch_24
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "KeyEvent.KEYCODE_HOME"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onResume()V

    const-string v0, "010"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public returnResult(Ljava/util/Map;)V
    .registers 8

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "account"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pcsCancle="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->k:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public returnResult(Ljava/util/Map;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a4

    const-string v0, "LoginResult"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromaddsubaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3, v0, v1, v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "RegisterActivity_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v3, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    :goto_a3
    return-void

    :cond_a4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_bd
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto :goto_a3
.end method
