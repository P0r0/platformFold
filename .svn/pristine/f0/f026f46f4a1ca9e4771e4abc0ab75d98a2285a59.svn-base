.class Lcom/duoku/platform/download/DownloadUtil$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AllDownloadObserver"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/duoku/platform/download/DownloadManager$Query;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 660
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 661
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadUtil$a;->c:Landroid/content/Context;

    .line 662
    new-instance v0, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v0}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v0

    const-string v1, "_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/download/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->d:Lcom/duoku/platform/download/DownloadManager$Query;

    .line 664
    iput-object p2, p0, Lcom/duoku/platform/download/DownloadUtil$a;->e:Landroid/os/Handler;

    .line 665
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/download/DownloadUtil$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()I
    .registers 2

    .prologue
    .line 669
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 671
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 673
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 669
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V
    .registers 4

    .prologue
    .line 678
    monitor-enter p0

    if-nez p1, :cond_5

    .line 696
    :goto_3
    monitor-exit p0

    return-void

    .line 682
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    if-nez v0, :cond_10

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    .line 686
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 693
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    goto :goto_3

    .line 678
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 686
    :cond_25
    :try_start_25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 688
    if-ne v0, p1, :cond_16

    goto :goto_3
.end method

.method declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2d

    move-result v0

    if-nez v0, :cond_f

    .line 762
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 725
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 730
    # getter for: Lcom/duoku/platform/download/DownloadUtil;->useMain:Z
    invoke-static {}, Lcom/duoku/platform/download/DownloadUtil;->access$0()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 732
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 733
    new-instance v1, Lcom/duoku/platform/download/DownloadUtil$a$1;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/download/DownloadUtil$a$1;-><init>(Lcom/duoku/platform/download/DownloadUtil$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2d

    goto :goto_d

    .line 720
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 752
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 753
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;

    .line 756
    invoke-interface {v0, p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;->onDownloadProcessing(Ljava/util/List;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_2d

    goto :goto_36
.end method

.method declared-synchronized b()V
    .registers 2

    .prologue
    .line 711
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    .line 716
    :goto_5
    monitor-exit p0

    return-void

    .line 715
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 711
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;)V
    .registers 3

    .prologue
    .line 700
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    .line 707
    :goto_5
    monitor-exit p0

    return-void

    .line 704
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 700
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_11

    :try_start_8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 823
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 830
    :cond_11
    :goto_11
    return-void

    .line 826
    :catch_12
    move-exception v0

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public onChange(Z)V
    .registers 5

    .prologue
    .line 767
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 771
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadUtil$a;->a()I

    move-result v0

    if-gtz v0, :cond_a

    .line 813
    :cond_9
    :goto_9
    return-void

    .line 778
    :cond_a
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadUtil$a;->d:Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 782
    if-nez v1, :cond_22

    .line 808
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 810
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 788
    :cond_22
    :try_start_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 789
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2a
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 804
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/DownloadUtil$a;->a(Ljava/util/List;)V
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_4a

    .line 808
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 810
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 793
    :cond_3d
    :try_start_3d
    # invokes: Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    invoke-static {v1}, Lcom/duoku/platform/download/DownloadUtil;->access$1(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v2

    .line 794
    if-eqz v2, :cond_46

    .line 795
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_55
    .catchall {:try_start_3d .. :try_end_46} :catchall_4a

    .line 789
    :cond_46
    :goto_46
    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_2a

    .line 807
    :catchall_4a
    move-exception v0

    .line 808
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_54

    .line 810
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 812
    :cond_54
    throw v0

    .line 800
    :catch_55
    move-exception v2

    goto :goto_46
.end method
