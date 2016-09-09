.class public Lcom/vivo/sdkplugin/Utils/VivoGridView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addData(Lcom/vivo/sdkplugin/model/MFeedImageInfo;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "VivoGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " --------before  childCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-virtual {v1, p1}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->setData(Lcom/vivo/sdkplugin/model/MFeedImageInfo;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    invoke-virtual {v1, v0, v4, v4}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VivoGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " --------add view : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VivoGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " --------after  childCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    return-void
.end method

.method public removeView(Landroid/net/Uri;)V
    .registers 6

    const-string v0, "VivoGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --------before uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " childCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "VivoGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " --------delete view : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VivoGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --------after  childCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoGridView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAdapter(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoGridView;->a:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;

    return-void
.end method
