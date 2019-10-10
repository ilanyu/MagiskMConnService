.class public Lcom/xiaomi/opensdk/a/c;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0, p2}, Lcom/xiaomi/opensdk/a/c;-><init>(Ljava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/xiaomi/opensdk/a/c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(I)Z
    .registers 2

    const/16 v0, 0x190

    if-eq p0, v0, :cond_18

    const/16 v0, 0x191

    if-eq p0, v0, :cond_18

    const/16 v0, 0x193

    if-eq p0, v0, :cond_18

    const/16 v0, 0x196

    if-eq p0, v0, :cond_18

    .line 30
    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x5

    if-ne p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/xiaomi/opensdk/a/c;->a:I

    return v0
.end method
