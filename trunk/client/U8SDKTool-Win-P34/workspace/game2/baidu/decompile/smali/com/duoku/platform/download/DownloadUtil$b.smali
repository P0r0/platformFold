.class Lcom/duoku/platform/download/DownloadUtil$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/duoku/platform/download/DownloadManager$Query;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Landroid/os/Handler;

.field private f:Lcom/duoku/platform/download/DownloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/Handler;)V
    .registers 5

    .prologue
    .line 913
    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 914
    iput-object p4, p0, Lcom/duoku/platform/download/DownloadUtil$b;->e:Landroid/os/Handler;

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadUtil$b;->a(Landroid/content/Context;J)V

    .line 917
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1034
    sparse-switch p1, :sswitch_data_2a

    .line 1061
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :sswitch_18
    const-string v0, "download_error"

    .line 1058
    :goto_1a
    return-object v0

    .line 1042
    :sswitch_1b
    const-string v0, "download_error"

    goto :goto_1a

    .line 1047
    :sswitch_1e
    const-string v0, "download_running"

    goto :goto_1a

    .line 1050
    :sswitch_21
    const/4 v0, 0x3

    if-ne p2, v0, :cond_27

    .line 1053
    const-string v0, "download_queued"

    goto :goto_1a

    .line 1058
    :cond_27
    const-string v0, "download_paused"

    goto :goto_1a

    .line 1034
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_21
        0x8 -> :sswitch_1b
        0x10 -> :sswitch_18
    .end sparse-switch
.end method

.method private a(J)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x3

    .line 1067
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1069
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadUtil$b;->d()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1071
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 1072
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    :goto_18
    return-object v0

    .line 1076
    :cond_19
    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 1077
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method static synthetic a(Lcom/duoku/platform/download/DownloadUtil$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    return-object v0
.end method

.method private d()Ljava/util/Date;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1083
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1084
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1085
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1086
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1087
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1088
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 924
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 926
    :cond_11
    return-void
.end method

.method declared-synchronized a(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 930
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadUtil$b;->c:Landroid/content/Context;

    .line 931
    iput-wide p2, p0, Lcom/duoku/platform/download/DownloadUtil$b;->d:J

    .line 933
    invoke-static {p1}, Lcom/duoku/platform/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->f:Lcom/duoku/platform/download/DownloadManager;

    .line 934
    new-instance v0, Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-direct {v0}, Lcom/duoku/platform/download/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager$Query;->setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->a:Lcom/duoku/platform/download/DownloadManager$Query;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 935
    monitor-exit p0

    return-void

    .line 930
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V
    .registers 3

    .prologue
    .line 939
    monitor-enter p0

    if-nez p1, :cond_5

    .line 948
    :goto_3
    monitor-exit p0

    return-void

    .line 943
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    if-nez v0, :cond_10

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    .line 947
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    goto :goto_3

    .line 939
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 6

    .prologue
    .line 978
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_46

    move-result v0

    if-nez v0, :cond_f

    .line 1029
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 982
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 987
    # getter for: Lcom/duoku/platform/download/DownloadUtil;->useMain:Z
    invoke-static {}, Lcom/duoku/platform/download/DownloadUtil;->access$0()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 989
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 990
    new-instance v1, Lcom/duoku/platform/download/DownloadUtil$b$1;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/download/DownloadUtil$b$1;-><init>(Lcom/duoku/platform/download/DownloadUtil$b;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_46

    .line 1018
    :cond_2c
    if-eqz p1, :cond_d

    :try_start_2e
    invoke-virtual {p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v0, v1, :cond_d

    .line 1020
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadUtil$b;->b()V

    .line 1021
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadUtil$b;->d:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->removeAllDownloadItemListener(Landroid/content/Context;J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_41
    .catchall {:try_start_2e .. :try_end_40} :catchall_46

    goto :goto_d

    .line 1024
    :catch_41
    move-exception v0

    .line 1026
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_d

    .line 978
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1008
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1009
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1011
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;

    .line 1012
    invoke-interface {v0, p1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;->onDownloadProcessing(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_46

    goto :goto_4f
.end method

.method declared-synchronized b()V
    .registers 2

    .prologue
    .line 960
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 962
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 965
    :cond_d
    monitor-exit p0

    return-void

    .line 960
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;)V
    .registers 3

    .prologue
    .line 952
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 954
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 956
    :cond_a
    monitor-exit p0

    return-void

    .line 952
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()I
    .registers 2

    .prologue
    .line 969
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 971
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 973
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 969
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(Z)V
    .registers 5

    .prologue
    .line 1095
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1098
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadUtil$b;->c()I

    move-result v0

    if-gtz v0, :cond_a

    .line 1153
    :cond_9
    :goto_9
    return-void

    .line 1105
    :cond_a
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadUtil$b;->f:Lcom/duoku/platform/download/DownloadManager;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadUtil$b;->a:Lcom/duoku/platform/download/DownloadManager$Query;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadManager;->query(Lcom/duoku/platform/download/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1110
    if-nez v1, :cond_1e

    .line 1147
    :cond_14
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 1121
    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_54

    move-result v0

    if-eqz v0, :cond_14

    .line 1128
    :try_start_24
    # invokes: Lcom/duoku/platform/download/DownloadUtil;->extractData(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    invoke-static {v1}, Lcom/duoku/platform/download/DownloadUtil;->access$1(Landroid/database/Cursor;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_49
    .catchall {:try_start_24 .. :try_end_27} :catchall_54

    move-result-object v0

    .line 1135
    :try_start_28
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->getStatusCode()I

    .line 1136
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->getReasonCode()I

    .line 1143
    :cond_3c
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/DownloadUtil$b;->a(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_54

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 1130
    :catch_49
    move-exception v0

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 1146
    :catchall_54
    move-exception v0

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1151
    :cond_5e
    throw v0
.end method
