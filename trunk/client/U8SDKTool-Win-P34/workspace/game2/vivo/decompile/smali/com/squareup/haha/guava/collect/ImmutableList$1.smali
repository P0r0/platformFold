.class final Lcom/squareup/haha/guava/collect/ImmutableList$1;
.super Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableList;->listIterator(I)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableList;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 348
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableList$1;, "Lcom/squareup/haha/guava/collect/ImmutableList.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableList$1;->this$0:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableList$1;, "Lcom/squareup/haha/guava/collect/ImmutableList.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$1;->this$0:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
