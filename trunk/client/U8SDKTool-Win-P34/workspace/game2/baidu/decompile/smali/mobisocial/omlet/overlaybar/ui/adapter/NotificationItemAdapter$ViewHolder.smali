.class Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field convertView:Landroid/view/ViewGroup;

.field index:I

.field mailOmletTextView:Landroid/widget/TextView;

.field messageTextView:Landroid/widget/TextView;

.field profileImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

.field thumbnailImageView:Landroid/widget/ImageView;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    .prologue
    .line 190
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
