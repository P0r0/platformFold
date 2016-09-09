.class public Lcom/unionpay/sdk/OttoDeadEvent;
.super Ljava/lang/Object;


# instance fields
.field public final event:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unionpay/sdk/OttoDeadEvent;->source:Ljava/lang/Object;

    iput-object p2, p0, Lcom/unionpay/sdk/OttoDeadEvent;->event:Ljava/lang/Object;

    return-void
.end method
