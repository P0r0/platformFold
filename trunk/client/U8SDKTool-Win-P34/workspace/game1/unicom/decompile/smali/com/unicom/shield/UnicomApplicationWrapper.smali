.class public Lcom/unicom/shield/UnicomApplicationWrapper;
.super Landroid/app/Application;
.source "UnicomApplicationWrapper.java"


# static fields
.field public static mApplication:Landroid/app/Application;

.field public static mApplicationName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "com.unicom.dcLoader.UnicomApplication"

    sput-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplicationName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_8

    .line 40
    :goto_7
    return-void

    .line 37
    :cond_8
    invoke-static {p0, p1}, Lcom/unicom/shield/unipay;->install(Landroid/app/Application;Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/unicom/shield/UnicomApplicationWrapper;->loadApplication(Landroid/content/Context;)V

    goto :goto_7
.end method

.method public loadApplication(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 14
    sget-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_5

    .line 28
    :goto_4
    return-void

    .line 18
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    .line 21
    const-class v0, Landroid/app/Application;

    const-string v1, "attach"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    sget-object v1, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_4

    .line 25
    :catch_37
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    sget-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    sget-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 47
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 58
    sget-object v0, Lcom/unicom/shield/UnicomApplicationWrapper;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    .line 59
    return-void
.end method
