.class public Lcom/unionpay/sdk/OttoBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/OttoBus$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_IDENTIFIER:Ljava/lang/String; = "default"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/unionpay/sdk/OttoThreadEnforcer;

.field private final e:Lcom/unionpay/sdk/a;

.field private final f:Ljava/lang/ThreadLocal;

.field private final g:Ljava/lang/ThreadLocal;

.field private final h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/OttoBus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/sdk/OttoThreadEnforcer;)V
    .registers 3

    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/unionpay/sdk/OttoBus;-><init>(Lcom/unionpay/sdk/OttoThreadEnforcer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/sdk/OttoThreadEnforcer;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/unionpay/sdk/a;->a:Lcom/unionpay/sdk/a;

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/sdk/OttoBus;-><init>(Lcom/unionpay/sdk/OttoThreadEnforcer;Ljava/lang/String;Lcom/unionpay/sdk/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/unionpay/sdk/OttoThreadEnforcer;Ljava/lang/String;Lcom/unionpay/sdk/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/OttoBus;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/OttoBus;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/unionpay/sdk/j;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/j;-><init>(Lcom/unionpay/sdk/OttoBus;)V

    iput-object v0, p0, Lcom/unionpay/sdk/OttoBus;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/unionpay/sdk/k;

    invoke-direct {v0, p0}, Lcom/unionpay/sdk/k;-><init>(Lcom/unionpay/sdk/OttoBus;)V

    iput-object v0, p0, Lcom/unionpay/sdk/OttoBus;->g:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/OttoBus;->h:Ljava/util/Map;

    iput-object p1, p0, Lcom/unionpay/sdk/OttoBus;->d:Lcom/unionpay/sdk/OttoThreadEnforcer;

    iput-object p2, p0, Lcom/unionpay/sdk/OttoBus;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/sdk/OttoBus;->e:Lcom/unionpay/sdk/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unionpay/sdk/OttoThreadEnforcer;->MAIN:Lcom/unionpay/sdk/OttoThreadEnforcer;

    invoke-direct {p0, v0, p1}, Lcom/unionpay/sdk/OttoBus;-><init>(Lcom/unionpay/sdk/OttoThreadEnforcer;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/unionpay/sdk/l;Lcom/unionpay/sdk/m;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Lcom/unionpay/sdk/m;->c()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    :goto_5
    if-nez v0, :cond_22

    :goto_7
    return-void

    :catch_8
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Producer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/unionpay/sdk/OttoBus;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_5

    :cond_22
    invoke-virtual {p0, v0, p1}, Lcom/unionpay/sdk/OttoBus;->dispatch(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v2
.end method


# virtual methods
.method protected dispatch(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V
    .registers 8

    :try_start_0
    sget-boolean v1, Lcom/unionpay/sdk/r;->a:Z

    if-eqz v1, :cond_2d

    instance-of v1, p1, Lcom/unionpay/sdk/r$a;

    if-eqz v1, :cond_2d

    move-object v0, p1

    check-cast v0, Lcom/unionpay/sdk/r$a;

    move-object v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "[dispatch]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v1, v1, Lcom/unionpay/sdk/r$a;->a:Ljava/util/HashMap;

    const-string v4, "apiType"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/unionpay/sdk/l;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p2, p1}, Lcom/unionpay/sdk/l;->a(Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not dispatch event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/unionpay/sdk/OttoBus;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_30
.end method

.method protected dispatchQueuedEvents()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->g:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/OttoBus$a;

    if-eqz v0, :cond_45

    iget-object v1, v0, Lcom/unionpay/sdk/OttoBus$a;->b:Lcom/unionpay/sdk/l;

    invoke-virtual {v1}, Lcom/unionpay/sdk/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/unionpay/sdk/OttoBus$a;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/unionpay/sdk/OttoBus$a;->b:Lcom/unionpay/sdk/l;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/sdk/OttoBus;->dispatch(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_3a

    goto :goto_1a

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/unionpay/sdk/OttoBus;->g:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->g:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected enqueueEvent(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/unionpay/sdk/OttoBus$a;

    invoke-direct {v1, p1, p2}, Lcom/unionpay/sdk/OttoBus$a;-><init>(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Event to post must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->d:Lcom/unionpay/sdk/OttoThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/unionpay/sdk/OttoThreadEnforcer;->enforce(Lcom/unionpay/sdk/OttoBus;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_26

    invoke-static {v1}, Lcom/unionpay/sdk/OttoBus;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/sdk/OttoBus;->h:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/OttoBus;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_58

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/l;

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/sdk/OttoBus;->enqueueEvent(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V

    goto :goto_48

    :cond_58
    move v0, v1

    move v1, v0

    goto :goto_2b

    :cond_5b
    if-nez v1, :cond_69

    instance-of v0, p1, Lcom/unionpay/sdk/OttoDeadEvent;

    if-nez v0, :cond_69

    new-instance v0, Lcom/unionpay/sdk/OttoDeadEvent;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/sdk/OttoDeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/sdk/OttoBus;->post(Ljava/lang/Object;)V

    :cond_69
    invoke-virtual {p0}, Lcom/unionpay/sdk/OttoBus;->dispatchQueuedEvents()V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object to register must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->d:Lcom/unionpay/sdk/OttoThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/unionpay/sdk/OttoThreadEnforcer;->enforce(Lcom/unionpay/sdk/OttoBus;)V

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->e:Lcom/unionpay/sdk/a;

    invoke-interface {v0, p1}, Lcom/unionpay/sdk/a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/sdk/m;

    iget-object v2, p0, Lcom/unionpay/sdk/OttoBus;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/sdk/m;

    if-eqz v2, :cond_74

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Producer method for type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found on type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/unionpay/sdk/m;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/unionpay/sdk/m;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_74
    iget-object v2, p0, Lcom/unionpay/sdk/OttoBus;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/l;

    invoke-direct {p0, v0, v1}, Lcom/unionpay/sdk/OttoBus;->a(Lcom/unionpay/sdk/l;Lcom/unionpay/sdk/m;)V

    goto :goto_88

    :cond_98
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->e:Lcom/unionpay/sdk/a;

    invoke-interface {v0, p1}, Lcom/unionpay/sdk/a;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lcom/unionpay/sdk/OttoBus;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_cc

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iget-object v1, p0, Lcom/unionpay/sdk/OttoBus;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_cc

    move-object v1, v2

    :cond_cc
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v3, p0, Lcom/unionpay/sdk/OttoBus;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/sdk/m;

    if-eqz v1, :cond_e8

    invoke-virtual {v1}, Lcom/unionpay/sdk/m;->a()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_114
    :goto_114
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/l;

    invoke-virtual {v1}, Lcom/unionpay/sdk/m;->a()Z

    move-result v4

    if-eqz v4, :cond_e8

    invoke-virtual {v0}, Lcom/unionpay/sdk/l;->a()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-direct {p0, v0, v1}, Lcom/unionpay/sdk/OttoBus;->a(Lcom/unionpay/sdk/l;Lcom/unionpay/sdk/m;)V

    goto :goto_114

    :cond_130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Bus \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/sdk/OttoBus;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object to unregister must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->d:Lcom/unionpay/sdk/OttoThreadEnforcer;

    invoke-interface {v0, p0}, Lcom/unionpay/sdk/OttoThreadEnforcer;->enforce(Lcom/unionpay/sdk/OttoBus;)V

    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->e:Lcom/unionpay/sdk/a;

    invoke-interface {v0, p1}, Lcom/unionpay/sdk/a;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/unionpay/sdk/OttoBus;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unionpay/sdk/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m;

    if-eqz v0, :cond_45

    invoke-virtual {v0, v2}, Lcom/unionpay/sdk/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event producer for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m;

    invoke-virtual {v0}, Lcom/unionpay/sdk/m;->b()V

    goto :goto_1d

    :cond_70
    iget-object v0, p0, Lcom/unionpay/sdk/OttoBus;->e:Lcom/unionpay/sdk/a;

    invoke-interface {v0, p1}, Lcom/unionpay/sdk/a;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/unionpay/sdk/OttoBus;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v3, :cond_a2

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_c1

    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event handler for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c5
    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/sdk/l;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-virtual {v1}, Lcom/unionpay/sdk/l;->b()V

    goto :goto_c5

    :cond_db
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_7e

    :cond_df
    return-void
.end method
