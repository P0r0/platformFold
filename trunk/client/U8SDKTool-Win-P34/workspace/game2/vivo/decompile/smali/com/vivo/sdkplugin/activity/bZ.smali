.class final Lcom/vivo/sdkplugin/activity/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    iput p2, p0, Lcom/vivo/sdkplugin/activity/bZ;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEmpty()V
    .registers 3

    const-string v0, "InfoMoreListFragment"

    const-string v1, "requestNewsList::onEmpty~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onFailed(IILjava/lang/String;)V
    .registers 7

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestNewsList-onFailed httpStatusCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onSuccess(JZLjava/util/List;Lcom/huanju/data/content/raw/info/HjAlbumInfo;Ljava/util/List;)V
    .registers 10

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestNewsList::onSuccess~~~~~~totalCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";hasMore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    iput-object p6, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    check-cast p4, Ljava/util/ArrayList;

    invoke-static {v0, p4}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0, p3}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->b(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bZ;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/vivo/sdkplugin/activity/bZ;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
