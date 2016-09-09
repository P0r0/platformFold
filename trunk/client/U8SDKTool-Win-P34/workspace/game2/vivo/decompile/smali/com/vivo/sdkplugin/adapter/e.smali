.class final Lcom/vivo/sdkplugin/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

.field private final synthetic b:Lcom/vivo/sdkplugin/adapter/f;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;Lcom/vivo/sdkplugin/adapter/f;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/e;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    iput-object p2, p0, Lcom/vivo/sdkplugin/adapter/e;->b:Lcom/vivo/sdkplugin/adapter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/e;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "vivo_delete_btn"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----delete-------loc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uriTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/e;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->b(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;

    move-result-object v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/vivo/sdkplugin/adapter/e;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-static {v2}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->b(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;->onDeleteItem(ILandroid/net/Uri;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/e;->b:Lcom/vivo/sdkplugin/adapter/f;

    iget-object v0, v0, Lcom/vivo/sdkplugin/adapter/f;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_54
    return-void
.end method
