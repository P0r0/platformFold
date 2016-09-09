.class public abstract Lcom/huanju/data/content/raw/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseErrorResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;
    .registers 3

    invoke-static {p1}, Lcom/huanju/data/content/raw/e;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation
.end method
