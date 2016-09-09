.class final Lcom/vivo/sdkplugin/activity/dI;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/dG;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/dG;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dI;->a:Lcom/vivo/sdkplugin/activity/dG;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dI;->a:Lcom/vivo/sdkplugin/activity/dG;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/dG;->a(Lcom/vivo/sdkplugin/activity/dG;)Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
