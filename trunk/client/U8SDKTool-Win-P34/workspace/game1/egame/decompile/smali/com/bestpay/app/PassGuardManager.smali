.class public Lcom/bestpay/app/PassGuardManager;
.super Ljava/lang/Object;
.source "PassGuardManager.java"


# static fields
.field private static INSTANCE:Lcom/bestpay/app/PassGuardManager;

.field private static INSTANCE_LOCK:Ljava/lang/Object;

.field private static m_context:Landroid/content/Context;


# instance fields
.field manager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/passguard/PassGuardEdit;",
            ">;"
        }
    .end annotation
.end field

.field private passGuardEdit:Lcn/passguard/PassGuardEdit;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bestpay/app/PassGuardManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/bestpay/app/PassGuardManager;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bestpay/app/PassGuardManager;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bestpay/app/PassGuardManager;)Lcn/passguard/PassGuardEdit;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/app/PassGuardManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/bestpay/app/PassGuardManager;->INSTANCE:Lcom/bestpay/app/PassGuardManager;

    if-nez v0, :cond_f

    .line 30
    sget-object v1, Lcom/bestpay/app/PassGuardManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_7
    new-instance v0, Lcom/bestpay/app/PassGuardManager;

    invoke-direct {v0}, Lcom/bestpay/app/PassGuardManager;-><init>()V

    sput-object v0, Lcom/bestpay/app/PassGuardManager;->INSTANCE:Lcom/bestpay/app/PassGuardManager;

    .line 30
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 34
    :cond_f
    sget-object v1, Lcom/bestpay/app/PassGuardManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_12
    sput-object p0, Lcom/bestpay/app/PassGuardManager;->m_context:Landroid/content/Context;

    .line 34
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b

    .line 37
    sget-object v0, Lcom/bestpay/app/PassGuardManager;->INSTANCE:Lcom/bestpay/app/PassGuardManager;

    return-object v0

    .line 30
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 34
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public ClearPassGuardKeyBoard(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public EditTextAlwaysShow(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "need"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->EditTextAlwaysShow(Z)V

    .line 290
    return-void
.end method

.method public StartPassGuardKeyBoard(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/bestpay/app/PassGuardManager;->StopPassGuardKeyBoardAllExceptID(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->StartPassGuardKeyBoard()V

    .line 117
    return-void
.end method

.method public StopPassGuardKeyBoard(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->StopPassGuardKeyBoard()V

    .line 122
    return-void
.end method

.method public StopPassGuardKeyBoardAll()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 135
    return-void

    .line 129
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2}, Lcn/passguard/PassGuardEdit;->isKeyBoardShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2}, Lcn/passguard/PassGuardEdit;->StopPassGuardKeyBoard()V

    goto :goto_a
.end method

.method public StopPassGuardKeyBoardAllExceptID(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 151
    return-void

    .line 142
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2}, Lcn/passguard/PassGuardEdit;->isKeyBoardShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2}, Lcn/passguard/PassGuardEdit;->StopPassGuardKeyBoard()V

    goto :goto_a
.end method

.method public checkMatch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->checkMatch()Z

    move-result v0

    return v0
.end method

.method public clear(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->clear()V

    .line 295
    return-void
.end method

.method public destory(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->destory()V

    .line 300
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public getOutput0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rsaKey"    # Ljava/lang/String;
    .param p3, "aesKey"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2, p3}, Lcn/passguard/PassGuardEdit;->getOutput0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutput1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "aesKey"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->getOutput1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutput2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->getOutput2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutput3(Ljava/lang/String;)I
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->getOutput3()I

    move-result v0

    return v0
.end method

.method public getPassLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v1}, Lcn/passguard/PassGuardEdit;->getPassLevel()[I

    move-result-object v0

    .line 213
    .local v0, "level":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasKeyBoardShowing()Z
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 270
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 272
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 279
    const/4 v2, 0x0

    :goto_11
    return v2

    .line 273
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/passguard/PassGuardEdit;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2}, Lcn/passguard/PassGuardEdit;->isKeyBoardShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 276
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public hasPassGuard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initPassGuardKeyBoard(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->initPassGuardKeyBoard()V

    .line 105
    return-void
.end method

.method public isKeyBoardShowing(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0}, Lcn/passguard/PassGuardEdit;->isKeyBoardShowing()Z

    move-result v0

    return v0
.end method

.method public isSimple(Ljava/lang/String;)I
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 219
    iget-object v1, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v1}, Lcn/passguard/PassGuardEdit;->getPassLevel()[I

    move-result-object v0

    .line 220
    .local v0, "level":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public newPassGuard(Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 52
    new-instance v2, Lcn/passguard/PassGuardEdit;

    sget-object v3, Lcom/bestpay/app/PassGuardManager;->m_context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcn/passguard/PassGuardEdit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    .line 53
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    iput-object p1, v2, Lcn/passguard/PassGuardEdit;->m_strid:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    iget-object v3, p0, Lcom/bestpay/app/PassGuardManager;->webView:Landroid/webkit/WebView;

    iput-object v3, v2, Lcn/passguard/PassGuardEdit;->m_webview:Landroid/webkit/WebView;

    .line 55
    new-instance v0, Lcom/bestpay/app/PassGuardManager$1;

    invoke-direct {v0, p0, p1}, Lcom/bestpay/app/PassGuardManager$1;-><init>(Lcom/bestpay/app/PassGuardManager;Ljava/lang/String;)V

    .line 73
    .local v0, "hideaction":Lcn/passguard/doAction;
    new-instance v1, Lcom/bestpay/app/PassGuardManager$2;

    invoke-direct {v1, p0}, Lcom/bestpay/app/PassGuardManager$2;-><init>(Lcom/bestpay/app/PassGuardManager;)V

    .line 93
    .local v1, "showaction":Lcn/passguard/doAction;
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2, v0}, Lcn/passguard/PassGuardEdit;->setKeyBoardHideAction(Lcn/passguard/doAction;)V

    .line 94
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2, v1}, Lcn/passguard/PassGuardEdit;->setKeyBoardShowAction(Lcn/passguard/doAction;)V

    .line 97
    iget-object v2, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/bestpay/app/PassGuardManager;->passGuardEdit:Lcn/passguard/PassGuardEdit;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setButtonPress(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "need"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setButtonPress(Z)V

    .line 172
    return-void
.end method

.method public setCipherKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setCipherKey(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setEncrypt(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "need"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setEncrypt(Z)V

    .line 156
    return-void
.end method

.method public setInputRegex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setInputRegex(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setMatchRegex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setMatchRegex(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setMaxLength(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "MaxLength"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setMaxLength(I)V

    .line 178
    return-void
.end method

.method public setNumberORLetterPad(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "is"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setNumberORLetterPad(Z)V

    .line 200
    return-void
.end method

.method public setPassword(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "need"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setShowPassword(Z)V

    .line 167
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rsakey"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setPublicKey(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setReorder(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setReorder(I)V

    .line 194
    return-void
.end method

.method public setWatchOutside(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "need"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->setWatchOutside(Z)V

    .line 285
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bestpay/app/PassGuardManager;->webView:Landroid/webkit/WebView;

    .line 42
    return-void
.end method

.method public useNumberPad(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "use"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bestpay/app/PassGuardManager;->manager:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/passguard/PassGuardEdit;

    invoke-virtual {v0, p2}, Lcn/passguard/PassGuardEdit;->useNumberPad(Z)V

    .line 226
    return-void
.end method
