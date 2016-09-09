.class public interface abstract Lsinglepay/network/TransportAgent;
.super Ljava/lang/Object;
.source "TransportAgent.java"


# static fields
.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_UNCOMPRESSED_CONTENT_LENGTH:Ljava/lang/String; = "Uncompressed-Content-Length"


# virtual methods
.method public abstract getResponseData()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public varargs abstract sendRequest([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendRequest([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCustomHeaders(Ljava/util/Hashtable;)V
.end method

.method public abstract setRequestContentType(Ljava/lang/String;)V
.end method

.method public abstract setRequestURL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
