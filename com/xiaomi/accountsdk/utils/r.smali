.class public Lcom/xiaomi/accountsdk/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/accountsdk/utils/r;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:Lcom/xiaomi/accountsdk/utils/r;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^V(\\d+)\\.(\\d+)\\.\\d+\\.\\d+\\.[A-Z]{7}$"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/r;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/xiaomi/accountsdk/utils/r;->a:I

    .line 21
    iput p2, p0, Lcom/xiaomi/accountsdk/utils/r;->b:I

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/r;
    .registers 4

    .line 33
    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->c:Lcom/xiaomi/accountsdk/utils/r;

    if-eqz v0, :cond_7

    .line 34
    sget-object v0, Lcom/xiaomi/accountsdk/utils/r;->c:Lcom/xiaomi/accountsdk/utils/r;

    return-object v0

    .line 37
    :cond_7
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 42
    :cond_d
    sget-object v2, Lcom/xiaomi/accountsdk/utils/r;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v1

    .line 47
    :cond_1a
    new-instance v1, Lcom/xiaomi/accountsdk/utils/r;

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/r;-><init>(II)V

    .line 52
    sput-object v1, Lcom/xiaomi/accountsdk/utils/r;->c:Lcom/xiaomi/accountsdk/utils/r;

    return-object v1
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/r;Z)Z
    .registers 3

    .line 25
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/r;->a()Lcom/xiaomi/accountsdk/utils/r;

    move-result-object v0

    if-nez v0, :cond_7

    return p1

    .line 29
    :cond_7
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/r;->a(Lcom/xiaomi/accountsdk/utils/r;)I

    move-result p0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private b()I
    .registers 3

    .line 84
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/r;->a:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/r;->b:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/utils/r;)I
    .registers 3

    if-eqz p1, :cond_c

    .line 80
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/r;->b()I

    move-result v0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/r;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 78
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "another == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 8
    check-cast p1, Lcom/xiaomi/accountsdk/utils/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/r;->a(Lcom/xiaomi/accountsdk/utils/r;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/accountsdk/utils/r;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 62
    :cond_a
    check-cast p1, Lcom/xiaomi/accountsdk/utils/r;

    .line 64
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/r;->a:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/r;->a:I

    if-eq v1, v3, :cond_13

    return v2

    .line 65
    :cond_13
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/r;->b:I

    iget p1, p1, Lcom/xiaomi/accountsdk/utils/r;->b:I

    if-ne v1, p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 70
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/r;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/r;->b:I

    add-int/2addr v0, v1

    return v0
.end method
