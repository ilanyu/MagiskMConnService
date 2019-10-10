.class public Lcn/kuaipan/android/http/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/http/a/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/kuaipan/android/http/a/a;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcn/kuaipan/android/http/a/a;->b:[B

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 68
    iget-object v0, p0, Lcn/kuaipan/android/http/a/a;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcn/kuaipan/android/http/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/io/InputStream;
    .registers 3

    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcn/kuaipan/android/http/a/a;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
