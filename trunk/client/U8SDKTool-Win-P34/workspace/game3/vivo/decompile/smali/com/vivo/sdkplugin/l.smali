.class final Lcom/vivo/sdkplugin/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/PopupMenu;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/PopupMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/l;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/l;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->a(Lcom/vivo/sdkplugin/PopupMenu;)Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/vivo/sdkplugin/l;->a:Lcom/vivo/sdkplugin/PopupMenu;

    const-string v1, "del_his_account_btn"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    move v1, v0

    :goto_18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/l;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v2}, Lcom/vivo/sdkplugin/PopupMenu;->a(Lcom/vivo/sdkplugin/PopupMenu;)Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;->onItemSelected(Ljava/lang/Boolean;I)V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    move v1, v0

    goto :goto_18
.end method
