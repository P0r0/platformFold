.class final Lcom/unionpay/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/m;


# direct methods
.method constructor <init>(Lcom/unionpay/m;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/n;->a:Lcom/unionpay/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/n;->a:Lcom/unionpay/m;

    iget-object v0, v0, Lcom/unionpay/m;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-virtual {v0}, Lcom/unionpay/UPPayWapActivity;->finish()V

    return-void
.end method
