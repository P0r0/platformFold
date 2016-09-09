.class public Lcom/baidu/android/pushservice/f/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/b;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/f/b;->b:I

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/b;->a:Ljava/io/InputStream;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/f/b;->b:I

    return v0
.end method
