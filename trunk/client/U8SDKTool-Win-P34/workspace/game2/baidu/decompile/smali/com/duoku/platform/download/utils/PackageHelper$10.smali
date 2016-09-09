.class Lcom/duoku/platform/download/utils/PackageHelper$10;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->installApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageHelper$10;->a:Ljava/lang/String;

    .line 1589
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$10;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->installDirectly(Ljava/lang/String;)V

    .line 1615
    return-void
.end method
