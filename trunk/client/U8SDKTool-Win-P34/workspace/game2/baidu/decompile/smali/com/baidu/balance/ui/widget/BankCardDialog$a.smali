.class public Lcom/baidu/balance/ui/widget/BankCardDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/balance/ui/widget/BankCardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/balance/ui/widget/BankCardDialog$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/balance/ui/widget/BankCardDialog$a;->b:Ljava/lang/String;

    return-void
.end method
