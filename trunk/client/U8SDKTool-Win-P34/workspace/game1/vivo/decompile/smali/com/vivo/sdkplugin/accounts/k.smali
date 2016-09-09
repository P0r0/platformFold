.class final Lcom/vivo/sdkplugin/accounts/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/k;->a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/k;->a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

    iget-object v0, v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/k;->a:Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;

    invoke-static {v1}, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->startLogin(Ljava/lang/String;)V

    return-void
.end method
