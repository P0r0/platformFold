.class public Lcom/youju/statistics/c/a;
.super Lcom/youju/statistics/c/e;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0, p2, p3}, Lcom/youju/statistics/c/e;-><init>(J)V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/youju/statistics/c/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/a;->b:Ljava/lang/String;

    return-object v0
.end method
