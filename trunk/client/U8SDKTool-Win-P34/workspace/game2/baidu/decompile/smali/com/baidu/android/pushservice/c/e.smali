.class public abstract Lcom/baidu/android/pushservice/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/c/e$1;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field protected c:Lcom/baidu/android/pushservice/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/android/pushservice/c/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/c/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/android/pushservice/c/e;->c:Lcom/baidu/android/pushservice/c/c;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/c/e;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x1

    const-string v0, "IClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client sync addOrRemove:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_27
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    :cond_5b
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_69
    iget-object v2, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_75

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    move v0, v1

    :goto_76
    if-nez v0, :cond_7f

    if-eqz p2, :cond_7f

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/c/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "IClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync  strApps: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    sget-object v1, Lcom/baidu/android/pushservice/c/e$1;->a:[I

    iget-object v4, p0, Lcom/baidu/android/pushservice/c/e;->c:Lcom/baidu/android/pushservice/c/c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/c/c;->ordinal()I

    move-result v4

    aget v1, v1, v4
    :try_end_a9
    .catchall {:try_start_27 .. :try_end_a9} :catchall_12c

    packed-switch v1, :pswitch_data_132

    move-object v1, v0

    :goto_ad
    :try_start_ad
    const-string v0, "2011121211143000"

    const-string v4, "1234567890123456"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/baidu/android/pushservice/j/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/c/e;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c4} :catch_10b
    .catchall {:try_start_ad .. :try_end_c4} :catchall_12c

    :try_start_c4
    monitor-exit v3

    :goto_c5
    return-object v0

    :cond_c6
    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_cc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fa

    :cond_f0
    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_fa
    move v0, v1

    goto/16 :goto_76

    :pswitch_fd
    const-string v0, "com.baidu.push.webr"

    move-object v1, v0

    goto :goto_ad

    :pswitch_101
    const-string v0, "com.baidu.push.lappr"

    move-object v1, v0

    goto :goto_ad

    :pswitch_105
    const-string v0, "com.baidu.push.sdkr"

    move-object v1, v0

    goto :goto_ad

    :pswitch_109
    move-object v1, v0

    goto :goto_ad

    :catch_10b
    move-exception v0

    const-string v1, "IClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_129
    .catchall {:try_start_c4 .. :try_end_129} :catchall_12c

    const-string v0, ""

    goto :goto_c5

    :catchall_12c
    move-exception v0

    :try_start_12d
    monitor-exit v3
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw v0

    :cond_12f
    move v0, v2

    goto/16 :goto_76

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_101
        :pswitch_105
        :pswitch_109
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/c/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3e

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/android/pushservice/c/a;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :cond_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1c
    if-ge v1, v4, :cond_a

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-eq v6, v8, :cond_34

    array-length v6, v5

    if-ne v6, v9, :cond_46

    :cond_34
    new-instance v6, Lcom/baidu/android/pushservice/c/a;

    aget-object v7, v5, v2

    invoke-direct {v6, v7}, Lcom/baidu/android/pushservice/c/a;-><init>(Ljava/lang/String;)V

    array-length v7, v5

    if-ne v7, v9, :cond_43

    aget-object v5, v5, v8

    invoke-virtual {v6, v5}, Lcom/baidu/android/pushservice/c/a;->a(Ljava/lang/String;)V

    :cond_43
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method protected a()V
    .registers 5

    const-string v0, ""

    sget-object v1, Lcom/baidu/android/pushservice/c/e$1;->a:[I

    iget-object v2, p0, Lcom/baidu/android/pushservice/c/e;->c:Lcom/baidu/android/pushservice/c/c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_94

    :goto_f
    :pswitch_f
    iget-object v1, p0, Lcom/baidu/android/pushservice/c/e;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/j/b;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "2011121211143000"

    const-string v3, "1234567890123456"

    invoke-static {v2, v3, v0}, Lcom/baidu/android/pushservice/j/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "IClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientManager init strApps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/c/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    iget-object v2, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_63} :catch_64

    goto :goto_52

    :catch_64
    move-exception v0

    const-string v1, "IClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void

    :pswitch_82
    const-string v0, "com.baidu.push.webr"

    goto :goto_f

    :pswitch_85
    const-string v0, "com.baidu.push.lappr"

    goto :goto_f

    :pswitch_88
    const-string v0, "com.baidu.push.sdkr"

    goto :goto_f

    :cond_8b
    const-string v0, "IClientManager"

    const-string v1, "ClientManager init strApps empty."

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_82
        :pswitch_85
        :pswitch_88
        :pswitch_f
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/c/e;->a()V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/a;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method
