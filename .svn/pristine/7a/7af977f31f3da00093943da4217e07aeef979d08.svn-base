.class final Lcom/vivo/sdkplugin/accounts/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/k;->a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

    iput-object p2, p0, Lcom/vivo/sdkplugin/accounts/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/k;->a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

    iget-object v0, v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/k;->b:Landroid/content/Context;

    sget-object v2, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->singlePaymentDirectly(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    return-void
.end method
