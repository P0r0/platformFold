.class final Lcom/unionpay/mobile/android/nocard/views/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unionpay/mobile/android/nocard/views/af;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/af;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ah;->b:Lcom/unionpay/mobile/android/nocard/views/af;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ah;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ah;->b:Lcom/unionpay/mobile/android/nocard/views/af;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
