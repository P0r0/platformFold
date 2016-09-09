.class Lcom/duoku/platform/download/utils/PackageHelper$9;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageHelper$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/download/utils/PackageHelper$9;->b:Ljava/lang/String;

    .line 1550
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1555
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$9;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getPacakgeInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 1572
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$9;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->installDirectly(Ljava/lang/String;)V

    .line 1574
    return-void
.end method
