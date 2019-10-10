.class public abstract Lcom/xiaomi/accountsdk/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/xiaomi/accountsdk/utils/d;

.field private static b:Lcom/xiaomi/accountsdk/utils/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AccountLog$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/AccountLog$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/d;->a:Lcom/xiaomi/accountsdk/utils/d;

    .line 89
    sget-object v0, Lcom/xiaomi/accountsdk/utils/d;->a:Lcom/xiaomi/accountsdk/utils/d;

    sput-object v0, Lcom/xiaomi/accountsdk/utils/d;->b:Lcom/xiaomi/accountsdk/utils/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/d;
    .registers 1

    .line 92
    sget-object v0, Lcom/xiaomi/accountsdk/utils/d;->b:Lcom/xiaomi/accountsdk/utils/d;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 154
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/d;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 99
    sput-object p0, Lcom/xiaomi/accountsdk/utils/d;->b:Lcom/xiaomi/accountsdk/utils/d;

    return-void

    .line 97
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "log == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 135
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 162
    :cond_5
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 103
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 107
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 111
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 115
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 119
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 123
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 127
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 131
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 139
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 143
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/d;->a()Lcom/xiaomi/accountsdk/utils/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/d;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract c(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method protected abstract e(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
