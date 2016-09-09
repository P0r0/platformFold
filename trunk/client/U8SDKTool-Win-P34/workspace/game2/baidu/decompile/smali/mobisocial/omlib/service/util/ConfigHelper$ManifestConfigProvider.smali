.class Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;
.super Ljava/lang/Object;
.source "ConfigHelper.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/util/ConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManifestConfigProvider"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "ignore_push":Z
    :try_start_1
    iget-object v3, p0, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .local v2, "metadata":Landroid/os/Bundle;
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result-object v3

    .line 52
    .end local v2    # "metadata":Landroid/os/Bundle;
    :goto_1d
    return-object v3

    .line 51
    :catch_1e
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 39
    .local v1, "metadata":Landroid/os/Bundle;
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v2

    .line 41
    .end local v1    # "metadata":Landroid/os/Bundle;
    :goto_18
    return-object v2

    .line 40
    :catch_19
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_18
.end method
