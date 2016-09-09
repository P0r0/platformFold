.class public Lcom/bbkmobile/iqoo/payment/model/ResultInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CONS_PAY_MSG:Ljava/lang/String; = "pay_msg"

.field public static final CONS_RESULT_WHAT:Ljava/lang/String; = "result_what"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsPayMsg()Ljava/lang/String;
    .registers 1

    const-string v0, "pay_msg"

    return-object v0
.end method

.method public static getConsResultWhat()Ljava/lang/String;
    .registers 1

    const-string v0, "result_what"

    return-object v0
.end method


# virtual methods
.method public getPay_msg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_result()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->d:Z

    return v0
.end method

.method public getRes_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResult_what()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->a:I

    return v0
.end method

.method public setPay_msg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setPay_result(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->d:Z

    return-void
.end method

.method public setRes_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setResult_what(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/ResultInfo;->a:I

    return-void
.end method
