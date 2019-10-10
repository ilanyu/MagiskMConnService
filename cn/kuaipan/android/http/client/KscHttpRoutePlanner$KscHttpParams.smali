.class Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KscHttpParams"
.end annotation


# instance fields
.field final synthetic a:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

.field private final b:Lorg/apache/http/params/HttpParams;

.field private final c:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->a:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 42
    iput-object p2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->b:Lorg/apache/http/params/HttpParams;

    .line 43
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method private constructor <init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .line 46
    iput-object p1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->a:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 47
    iput-object p2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->b:Lorg/apache/http/params/HttpParams;

    .line 48
    iput-object p3, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .registers 5

    .line 69
    new-instance v0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;

    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->a:Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;

    iget-object v2, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->b:Lorg/apache/http/params/HttpParams;

    iget-object v3, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    invoke-interface {v3}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;-><init>(Lcn/kuaipan/android/http/client/KscHttpRoutePlanner;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 53
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 55
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 78
    :try_start_8
    iget-object v1, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->b:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    :cond_f
    move p1, v0

    :goto_10
    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .registers 4

    .line 63
    iget-object v0, p0, Lcn/kuaipan/android/http/client/KscHttpRoutePlanner$KscHttpParams;->c:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    return-object p0
.end method
