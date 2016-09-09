.class Lcom/bestpay/app/H5PayActivity$7;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity;->gobackpro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$7;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 627
    return-void
.end method
