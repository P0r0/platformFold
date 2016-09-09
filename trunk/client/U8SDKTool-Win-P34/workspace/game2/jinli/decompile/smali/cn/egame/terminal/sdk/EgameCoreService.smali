.class public Lcn/egame/terminal/sdk/EgameCoreService;
.super Landroid/app/Service;
.source "EgameCoreService.java"


# static fields
.field public static final ACTION_SERVICE_CMD:Ljava/lang/String; = "cn.egame.terminal.sdk.SERVICE_CMD"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "service"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "intent"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "onBind"

    invoke-static {v2, v1}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    .line 42
    check-cast v0, Landroid/os/IBinder;

    .line 44
    .end local v0    # "object":Ljava/lang/Object;
    :goto_19
    return-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "configuration"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "onConfigurationChanged"

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 77
    invoke-static {p0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->initCore(Landroid/content/Context;)Lcn/egame/terminal/sdk/jni/ProtocolMessage;

    move-result-object v1

    .line 79
    .local v1, "result":Lcn/egame/terminal/sdk/jni/ProtocolMessage;
    if-nez v1, :cond_18

    .line 80
    const-string v2, "ECS"

    const-string v3, "ecs init failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcn/egame/terminal/sdk/EgameCoreService;->stopSelf()V

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 90
    :goto_17
    return-void

    .line 86
    :cond_18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "service"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "onCreate"

    invoke-static {v2, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "onDestroy"

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "onLowMemory"

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "onRebind"

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "service"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v3, "intent"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v3, "flags"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v3, "startId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v3, "onStartCommand"

    invoke-static {v3, v2}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_30

    .line 142
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    :goto_2f
    return v0

    .restart local v1    # "object":Ljava/lang/Object;
    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_2f
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "onUnbind"

    invoke-static {v1, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
