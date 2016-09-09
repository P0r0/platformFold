.class Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UserGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field convertView:Landroid/view/ViewGroup;

.field index:I

.field nameTextView:Landroid/widget/TextView;

.field profileImageView:Landroid/widget/ImageView;

.field selectButton:Landroid/widget/ImageButton;

.field selectView:Landroid/view/View;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    .prologue
    .line 88
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
