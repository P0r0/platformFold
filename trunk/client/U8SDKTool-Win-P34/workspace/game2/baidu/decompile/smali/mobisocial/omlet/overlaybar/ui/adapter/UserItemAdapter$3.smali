.class Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;
.super Ljava/lang/Object;
.source "UserItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

.field final synthetic val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

.field final synthetic val$user:Lmobisocial/longdan/LDProtocols$LDUser;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;Lmobisocial/longdan/LDProtocols$LDUser;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .prologue
    .line 177
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->val$user:Lmobisocial/longdan/LDProtocols$LDUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->isFollow:Z

    .line 182
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_HeaderView:Landroid/view/View;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "follow_count"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, "followCount":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 196
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;->val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    # invokes: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->setFollowView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$200(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V

    .line 197
    return-void
.end method
