.class public Lcn/egame/terminal/sdk/EgameCoreActivity;
.super Landroid/app/Activity;
.source "EgameCoreActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;
    .registers 4
    .param p1, "mn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->callCore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "activity"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "event"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "dispatchKeyEvent"

    invoke-direct {p0, v3, v1}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_20

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 39
    .local v2, "result":Z
    if-eqz v2, :cond_20

    .line 43
    .end local v2    # "result":Z
    :goto_1f
    return v2

    :cond_20
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "request"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "result"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "onActivityResult"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "configuration"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "onConfigurationChanged"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->initCore(Landroid/content/Context;)Lcn/egame/terminal/sdk/jni/ProtocolMessage;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 24
    invoke-virtual {p0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->finish()V

    .line 29
    :goto_1b
    return-void

    .line 28
    :cond_1c
    const-string v1, "onCreate"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    goto :goto_1b
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "onDestroy"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "activity"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "keyCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "event"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "onKeyDown"

    invoke-direct {p0, v3, v1}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_29

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 55
    .local v2, "result":Z
    if-eqz v2, :cond_29

    .line 59
    .end local v2    # "result":Z
    :goto_28
    return v2

    :cond_29
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_28
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "onPause"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "onResume"

    invoke-direct {p0, v1, v0}, Lcn/egame/terminal/sdk/EgameCoreActivity;->callCore(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    .line 84
    return-void
.end method
