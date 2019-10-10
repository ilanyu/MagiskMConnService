.class public Lmiui/cloud/common/XLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XLogger$LogSender;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "##XLogger##"

.field private static final b:Ljava/lang/String; = "miui.cloud.common.XLogger"

.field private static volatile c:Lmiui/cloud/common/XLogger$LogSender;

.field private static volatile d:I

.field private static volatile e:I

.field private static volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 222
    new-instance v0, Lmiui/cloud/common/XLogger$1;

    invoke-direct {v0}, Lmiui/cloud/common/XLogger$1;-><init>()V

    sput-object v0, Lmiui/cloud/common/XLogger;->c:Lmiui/cloud/common/XLogger$LogSender;

    const/4 v0, 0x4

    .line 232
    sput v0, Lmiui/cloud/common/XLogger;->d:I

    const/4 v0, 0x2

    .line 233
    sput v0, Lmiui/cloud/common/XLogger;->e:I

    const/4 v0, 0x1

    .line 234
    sput-boolean v0, Lmiui/cloud/common/XLogger;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "NULL"

    return-object p0

    .line 170
    :cond_5
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    .line 171
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_23
    if-ge v2, p0, :cond_39

    aget-object v4, p1, v2

    if-nez v3, :cond_2e

    const-string v3, ", "

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2e
    invoke-static {v4}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_23

    :cond_39
    const-string p0, "]"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xa

    if-ge v1, v2, :cond_26

    if-nez p0, :cond_d

    goto :goto_26

    .line 186
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, " *Caused by* "

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    :goto_26
    if-eqz p0, :cond_2d

    const-string p0, " *and more...*"

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lmiui/cloud/common/XLogger$LogSender;
    .registers 1

    .line 165
    sget-object v0, Lmiui/cloud/common/XLogger;->c:Lmiui/cloud/common/XLogger$LogSender;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    .line 149
    sput p0, Lmiui/cloud/common/XLogger;->d:I

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    .line 40
    sget v0, Lmiui/cloud/common/XLogger;->e:I

    if-ge p0, v0, :cond_5

    return-void

    .line 43
    :cond_5
    sget-object v0, Lmiui/cloud/common/XLogger;->c:Lmiui/cloud/common/XLogger$LogSender;

    if-nez v0, :cond_a

    return-void

    .line 47
    :cond_a
    sget-boolean v1, Lmiui/cloud/common/XLogger;->f:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/cloud/common/XLogger;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_24
    const-string v1, ""

    .line 50
    :goto_26
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_32

    .line 51
    aget-object p2, p2, v3

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_52

    .line 53
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    array-length v4, p2

    :goto_38
    if-ge v3, v4, :cond_51

    aget-object v5, p2, v3

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_47

    const-string v6, ", "

    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_47
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_51
    move-object p2, v2

    :goto_52
    if-nez p1, :cond_56

    const-string p1, "##XLogger##"

    .line 62
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lmiui/cloud/common/XLogger$LogSender;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0, p1}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x6

    invoke-static {p1, p0, v0}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lmiui/cloud/common/XLogger$LogSender;)V
    .registers 1

    .line 161
    sput-object p0, Lmiui/cloud/common/XLogger;->c:Lmiui/cloud/common/XLogger$LogSender;

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 157
    sput-boolean p0, Lmiui/cloud/common/XLogger;->f:Z

    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget v0, Lmiui/cloud/common/XLogger;->d:I

    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 8

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 204
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v1, :cond_5b

    aget-object v5, v0, v3

    .line 205
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmiui/cloud/common/XLogger;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1f

    const/4 v4, 0x1

    goto :goto_21

    :cond_1f
    if-nez v4, :cond_24

    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_24
    const-string v0, "%s::%s@%s:%s, thread:%s"

    const/4 v1, 0x5

    .line 212
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const-string v0, ""

    return-object v0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 117
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_29

    .line 118
    array-length v1, p1

    if-eqz v1, :cond_29

    .line 119
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    .line 120
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    return-object v0

    :catch_2a
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)V
    .registers 1

    .line 153
    sput p0, Lmiui/cloud/common/XLogger;->e:I

    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x5

    invoke-static {p1, p0, v0}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x6

    .line 76
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x4

    invoke-static {p1, p0, v0}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x5

    .line 80
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x3

    invoke-static {p1, p0, v0}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x4

    .line 84
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiui/cloud/common/XLogger;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x2

    invoke-static {p1, p0, v0}, Lmiui/cloud/common/XLogger;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x3

    .line 88
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f([Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x2

    .line 92
    invoke-static {v0, p0}, Lmiui/cloud/common/XLogger;->a(I[Ljava/lang/Object;)V

    return-void
.end method
