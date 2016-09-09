.class public Lcom/vivo/sdkplugin/Utils/FooterController;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/vivo/sdkplugin/Utils/FooterController$State;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->a:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "load_state_tips"

    invoke-static {p2, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->b:Landroid/widget/TextView;

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    return-void
.end method


# virtual methods
.method public getState()Lcom/vivo/sdkplugin/Utils/FooterController$State;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    return-object v0
.end method

.method public setEmpty()V
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->b:Landroid/widget/TextView;

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasMore()V
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->HAS_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->b:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoading()V
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->LOADING:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->b:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNoMore()V
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/Utils/FooterController$State;->NO_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->c:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/FooterController;->b:Landroid/widget/TextView;

    const-string v1, "\u5df2\u5c55\u793a\u5168\u90e8\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
