.class Lcom/duoku/platform/ui/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iput-object p2, p0, Lcom/duoku/platform/ui/b$5;->b:Ljava/util/List;

    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1614
    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    if-nez v0, :cond_10

    .line 1684
    :cond_f
    :goto_f
    return-void

    .line 1618
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    invoke-static {v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 1619
    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1620
    iget-object v1, p0, Lcom/duoku/platform/ui/b$5;->b:Ljava/util/List;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 1622
    iget-object v1, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v1, v12}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setNotifyOnChange(Z)V

    .line 1623
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1671
    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v1, v1, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/ui/b;Ljava/util/List;)Ljava/util/List;

    .line 1672
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 1673
    const-string v0, "DownloadAppListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh :data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v2, v2, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v2}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_65
    iget-object v0, p0, Lcom/duoku/platform/ui/b$5;->a:Lcom/duoku/platform/ui/b;

    iget-object v0, v0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    goto :goto_f

    .line 1623
    :cond_6d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1625
    iget-object v1, p0, Lcom/duoku/platform/ui/b$5;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_79
    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1627
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    .line 1629
    sget-boolean v6, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v6, :cond_ba

    .line 1630
    const-string v6, "DownloadAppListFragment"

    .line 1631
    const-string v7, "Refresh set data:appId:%s,fileId:%s,app.package:%s,file.package:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1630
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_ba
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_d0

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1637
    :cond_d0
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_79

    .line 1644
    :cond_e6
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_79

    .line 1653
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getCurrentBytes()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setCurrtentSize(J)V

    .line 1654
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setTotalSize(J)V

    .line 1656
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 1657
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)V

    goto/16 :goto_79
.end method
