.class final Lcom/vivo/sdkplugin/Utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/ActivityManager;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/z;->a:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/z;->a:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/z;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bbk/payment/util/UtilTool;->getTaskActionId(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
